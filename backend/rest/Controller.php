<?php

/**
 * @version    Controller.php 0.1
 * @package    backend\rest
 * @subpackage
 * @category   Controller
 * @author     Hamza Chouaibi {@link http://portalsway.com} {@link hamza.chouaibi[at]gmail[dot]com}
 * @author     Created on Sun, 11 Aug 2013 14:50:52 +0000
 * @license    GNU/GPL
 */

namespace backend\rest;


use yii\web\ForbiddenHttpException;
use backend\oauth\filters\auth\HttpBearerAuth;
use backend\oauth\filters\auth\QueryParamAuth;
use backend\oauth\filters\CompositeAuth;
use backend\db\Model;
use filsh\yii2\oauth2server\filters\ErrorToExceptionFilter;
use yii\base\Action;
use yii\filters\HttpCache;
use yii\helpers\ArrayHelper;
use yii\helpers\Inflector;
use yii\rest\ActiveController;

/**
 * Class Controller
 * @package backend\rest
 * @property Model $modelClass
 */
class Controller extends ActiveController
{
    public function init()
    {
        if (!$this->modelClass) {
            $this->modelClass = Inflector::pluralize($this->id);
        }
        \Yii::$app->request->getRawBody();
        \Yii::$app->getResponse()->getHeaders()->add('Access-Control-Allow-Origin', '*');
        parent::init();
    }

    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        $behaviors = ArrayHelper::merge(
            parent::behaviors(),
            [
                'authenticator' => [
                    'class' => CompositeAuth::className(),
                    'authMethods' => [
                        ['class' => HttpBearerAuth::className()],
                        ['class' => QueryParamAuth::className(), 'tokenParam' => 'accessToken'],
                    ]
                ],
                'exceptionFilter' => [
                    'class' => ErrorToExceptionFilter::className()
                ],
                'corsFilter' => [
                    'class' => \backend\rest\filters\Cors::className(),
                    'cors' => [
                        // restrict access to
                        'Origin' => ['*'],
                        'Access-Control-Request-Method' => ['POST', 'PUT', 'OPTIONS', 'PATCH', 'DELETE'],
                        // Allow only POST and PUT methods
                        'Access-Control-Request-Headers' => [
                            'X-Pagination-Total-Count',
                            'X-Pagination-Page-Count',
                            'X-Pagination-Current-Page',
                            'X-Pagination-Per-Page',
                            'Content-Length',
                            'Content-type',
                            'Link',
                        ],
                        // Allow only headers 'X-Wsse'
                        'Access-Control-Allow-Credentials' => true,
                        // Allow OPTIONS caching
                        'Access-Control-Max-Age' => 3600,
                        'Access-Control-Expose-Headers' => [
                            'X-Pagination-Total-Count',
                            'X-Pagination-Page-Count',
                            'X-Pagination-Current-Page',
                            'X-Pagination-Per-Page',
                            'Content-Length',
                            'Content-type',
                            'Link',
                        ],
                        'Access-Control-Allow-Headers' => [
                            'X-Pagination-Total-Count',
                            'X-Pagination-Page-Count',
                            'X-Pagination-Current-Page',
                            'X-Pagination-Per-Page',
                            'Content-Length',
                            'Content-type',
                            'Link',
                        ]
                    ]
                ]
            ]
        );

        if (isset(\Yii::$app->params['httpCacheActive']) and \Yii::$app->params['httpCacheActive']) {
            $params = \Yii::$app->getRequest()->getQueryParams();
            unset($params['accessToken']);

            $behaviors ['httpCache'] = [
                'class' => HttpCache::className(),
//                    'only' => ['index'],
                'params' => $params,
                'lastModified' => function ($action, $params) {
                    $q = new \yii\db\Query();
                    $class = $this->modelClass;
                    if (in_array('updated_at', $class::getTableSchema()->getColumnNames())) {
                        return strtotime($q->from($class::tableName())->max('updated_at'));
                    }

                    if (in_array('modified', $class::getTableSchema()->getColumnNames())) {
                        return strtotime($q->from($class::tableName())->max('modified'));
                    }

                    return null;
                },
                'etagSeed' => function (Action $action, $params) {
                    $iterator = new \RecursiveIteratorIterator(new \RecursiveArrayIterator($params));
                    $keys = array();
                    foreach ($iterator as $key => $value) {
                        // Build long key name based on parent keys
                        for ($i = $iterator->getDepth() - 1; $i >= 0; $i--) {
                            $key = $iterator->getSubIterator($i)->key() . '_' . $key;

                            if (!is_array($iterator->getSubIterator($i)->current())) {
                                $value = $iterator->getSubIterator($i)->current() . '_' . $value;
                            }
                        }
                        $keys[] = $key . '-' . $value;

                    }
                    $uniqueId = implode('-', $keys);

                    return $uniqueId;
                }
            ];
        }

        return $behaviors;
    }

    /**
     * @inheritdoc
     */
    public function actions()
    {
        return array_merge(
            parent::actions(),
            [
                'index' => [
                    'class' => 'backend\rest\action\IndexAction',
                    'modelClass' => $this->modelClass,
                ],
                'view' => [
                    'class' => 'yii\rest\ViewAction',
                    'modelClass' => $this->modelClass,
                ],
                'create' => [
                    'class' => 'backend\rest\action\CreateAction',
                    'modelClass' => $this->modelClass,
                    'scenario' => $this->createScenario,
                ],
                'update' => [
                    'class' => 'backend\rest\action\UpdateAction',
                    'modelClass' => $this->modelClass,
                    'scenario' => $this->updateScenario
                ],
                'delete' => [
                    'class' => 'backend\rest\action\DeleteAction',
                    'modelClass' => $this->modelClass,
                ],
                'options' => [
                    'class' => 'yii\rest\OptionsAction',
                ],
            ]
        );
    }

    public function checkAccess($action, $model = null, $params = [])
    {
        $action = $this->action;
        $actionId = $action->getUniqueId();

        $user = \Yii::$app->getUser();
        if ($user->can('/' . $actionId, ['model' => $model])) {
            return true;
        }
        $obj = $action->controller;
        do {
            if ($user->can('/' . ltrim($obj->getUniqueId() . '/*', '/'), ['model' => $model])) {
                return true;
            }
            $obj = $obj->module;
        } while ($obj !== null);
        $this->denyAccess($user);
    }

    /**
     * Denies the access of the user.
     * The default implementation will redirect the user to the login page if he is a guest;
     * if the user is already logged, a 403 HTTP exception will be thrown.
     * @param  \yii\web\User $user the current user
     * @throws \yii\web\ForbiddenHttpException if the user is already logged in.
     */
    protected function denyAccess($user)
    {
        if ($user->getIsGuest()) {
            $user->loginRequired();
        } else {
            throw new ForbiddenHttpException(\Yii::t('yii', 'You are not allowed to perform this action.'));
        }
    }
}

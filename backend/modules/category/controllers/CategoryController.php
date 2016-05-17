<?php

namespace backend\modules\category\controllers;


use backend\APEDevices\components\controllers\ControllerAPED;
use Yii;
use backend\modules\category\models\Category;
use yii\data\ActiveDataProvider;

use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use backend\oauth\filters\auth\HttpBearerAuth;
use yii\filters\auth\CompositeAuth;
use yii\filters\auth\QueryParamAuth;
use yii\helpers\ArrayHelper;

/**
 * CategoryController implements the CRUD actions for Category model.
 */
class CategoryController extends ControllerAPED
{
    public $modelClass = 'backend\modules\category\models\Category';

    public function behaviors()
    {
        return ArrayHelper::merge(
            parent::behaviors(),
            [
                'authenticator' => [
                    'class' => CompositeAuth::className(),
                    'only' => ['create', 'update'],
                    'authMethods' => [
                        ['class' => HttpBearerAuth::className()],
                        [
                            'class' => QueryParamAuth::className(),
                            'tokenParam' => 'accessToken',

                        ],
                    ]
                ],
            ]
        );
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
                'formattedCategories' => [
                    'class' => 'backend\modules\category\controllers\actions\FormattedCategoriesAction',
                    'modelClass' => $this->modelClass
                ],
            ]
        );
    }

}

<?php

namespace backend\modules\device\controllers;

use backend\APEDevices\components\controllers\ControllerAPED;
use backend\oauth\filters\auth\HttpBearerAuth;
use yii\filters\auth\CompositeAuth;
use yii\filters\auth\QueryParamAuth;
use yii\helpers\ArrayHelper;

class DeviceController extends ControllerAPED
{
    public $modelClass = 'backend\modules\device\models\Device';

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
                ]
            ]
        );
    }

}

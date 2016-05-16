<?php

namespace backend\modules\category\controllers;


use backend\APEDevices\components\controllers\ControllerAPED;
use Yii;
use backend\modules\category\models\Category;
use yii\data\ActiveDataProvider;

use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * CategoryController implements the CRUD actions for Category model.
 */
class CategoryController extends ControllerAPED
{
    public $modelClass = 'backend\modules\category\models\Category';

    public function actions()
    {

        return array_merge(
            parent::actions(),
            [
                'formattedCategories' => [
                    'class' => 'backend\modules\category\controllers\actions\FormattedCategoriesAction',
                    'modelClass' => $this->modelClass
                ],
            ]
        );
    }
}

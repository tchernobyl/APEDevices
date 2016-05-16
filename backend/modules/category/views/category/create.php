<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model backend\modules\category\models\Category */

$this->title = 'Create Category';
$this->params['breadcrumbs'][] = ['label' => 'Categories', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;

$menu = \yii\widgets\Menu::widget(
    [
        'items' => [
            [
                'icon' => 'fa fa-fw fa-list-alt',
                'label' => 'Category manage',
                'url' => ['/category/index']
            ],
            [
                'icon' => 'fa fa-fw fa-plus-square',
                'label' => 'Create category',
                'url' => ['/category/create']
            ],
        ],
        'encodeLabels' => false,
        'linkTemplate' => '<i class="fa fa-fw fa-list-alt"><a href="{url}">{label}</a></i> ',
        'options' => [

            'class' => 'nav nav-list',
            'id' => 'navbar-id',
            'style' => 'font-size: 14px;',
            'data-tag' => 'yii2-menu',

        ],

    ]
);;

?>
<div class="category-create">
    <div class="row">
        <div class=" col-sm-10">
            <h1><?= Html::encode($this->title) ?></h1>

            <?=
            $this->render(
                '_form',
                [
                    'model' => $model,
                ]
            ) ?>
        </div>
        <div class=" col-sm-2 ">

            <div class="panel panel-default" style="padding: 8px 0;">
                <ul class="nav nav-list">
                    <li>
                        <?= Html::a('<i class="glyphicon glyphicon-th-list"></i> Create Category', ['create']) ?>
                    </li>
                    <li>
                        <?= Html::a('<i class="glyphicon glyphicon-th-list"></i> Category manage', ['index']) ?>
                </ul>
            </div>


        </div>
    </div>


</div>
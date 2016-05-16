<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Categories';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="category-index">

    <h1><?= Html::encode($this->title);
        $bool = "" ?></h1>

    <p>
        <?= Html::a('Create Category', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <div data-ng-show=<?= !$bool ?>>
        jjjjjjjjjj
    </div>
    <?=
    GridView::widget(
        [
            'dataProvider' => $dataProvider,
            'columns' => [
                ['class' => 'yii\grid\SerialColumn'],
                'id',
                'parent_id',
                'slug',
                'name',
                'image',
                // 'short_description:ntext',
                // 'description:ntext',
                // 'status',

                ['class' => 'yii\grid\ActionColumn'],
            ],
        ]
    ); ?>

</div>
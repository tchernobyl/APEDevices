<?php

namespace backend\modules\brand\models;

use backend\modules\category\models\Category;
use Yii;
use yii\data\ActiveDataProvider;

/**
 * This is the model class for table "brand_category".
 * @property integer $id
 * @property integer $brand_id
 * @property integer $category_id
 * @property string $type
 * @property string $params
 * @property Category $category
 * @property Brand $brand
 */
class Brandcategory extends \backend\db\Model
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'brand_category';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['brand_id', 'category_id'], 'required'],
            [['brand_id', 'category_id'], 'integer'],
            [['params'], 'string'],
            [['type'], 'string', 'max' => 25]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'brand_id' => 'Brand ID',
            'category_id' => 'Category ID',
            'type' => 'Type',
            'params' => 'Params',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCategoryId()
    {
        return $this->hasOne(Category::className(), ['id' => 'category_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getBrandId()
    {
        return $this->hasOne(Brand::className(), ['id' => 'brand_id']);
    }

    public function getIds($categoryId, $field)
    {
        if ($field == "categories") {

            //        $this->findAll(array('category_id'=>$categoryId));
            $query = $this->find()->where(['=', 'category_id', $categoryId]);
            $provider = new ActiveDataProvider([
                'query' => $query,
                'key' => 'brand_id',
            ]);

            return $provider->getKeys();
        } else {
            return [];
        }

    }
}

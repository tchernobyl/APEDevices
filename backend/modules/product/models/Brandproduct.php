<?php

namespace backend\modules\product\models;

use backend\modules\brand\models\Brand;
use Yii;
use yii\data\ActiveDataProvider;

/**
 * This is the model class for table "brand_product".
 * @property integer $id
 * @property integer $brand_id
 * @property integer $product_id
 * @property string $type
 * @property string $params
 * @property Product $product
 * @property Brand $brand
 */
class Brandproduct extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'brand_product';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['brand_id', 'product_id'], 'required'],
            [['brand_id', 'product_id'], 'integer'],
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
            'product_id' => 'Product ID',
            'type' => 'Type',
            'params' => 'Params',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getProduct()
    {
        return $this->hasOne(Product::className(), ['id' => 'product_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getBrand()
    {
        return $this->hasOne(Brand::className(), ['id' => 'brand_id']);
    }

    public function getIds($Id, $field)
    {
        if ($field == "brands") {


            $query = $this->find()->where(['=', 'brand_id', $Id]);
            $provider = new ActiveDataProvider([
                'query' => $query,
                'key' => 'product_id',
            ]);

            return $provider->getKeys();
        }
        if ($field == "products") {


            $query = $this->find()->where(['=', 'product_id', $Id]);
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

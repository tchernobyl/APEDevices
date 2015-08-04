<?php

namespace backend\modules\product\models;

use backend\modules\brand\models\Brand;
use backend\modules\device\models\Device;
use Yii;

/**
 * This is the model class for table "product_product".
 * @property integer $id
 * @property integer $brand_id
 * @property string $product
 * @property string $short_description
 * @property string $description
 * @property string $params
 * @property Brand $brand
 */
class Product extends \backend\db\Model
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'product_product';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['brand_id', 'product', 'short_description', 'description'], 'required'],
            [['brand_id'], 'integer'],
            [['params', 'short_description', 'description'], 'string'],
            [['product'], 'string', 'max' => 25]
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
            'product' => 'Product',
            'short_description' => 'Short Description',
            'description' => 'Description',
            'params' => 'Params',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getBrand()
    {
        return $this->hasOne(Brand::className(), ['id' => 'brand_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getDevices()
    {
        return $this->hasMany(Device::className(), ['product_id' => 'id']);
    }

    public function defaultExpand()
    {
        return [
//            'brand'
        ];
    }
}
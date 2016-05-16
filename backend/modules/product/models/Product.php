<?php

namespace backend\modules\product\models;

use backend\behaviors\HasParamsBehavior;
use backend\modules\content\models\Content;
use backend\modules\device\models\Deviceproduct;
use backend\modules\file\models\File;
use Yii;
use backend\modules\brand\models\Brand;
use backend\modules\device\models\Device;
use backend\modules\field\models\Field;

/**
 * This is the model class for table "product_product".
 * @property integer $id
 * @property string $product
 * @property string $short_description
 * @property string $description
 * @property string $params
 * @property string $extra_fields
 * @property string $name
 * @property Content[] $contents
 * @property Field[] $fields
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
            [['product', 'short_description', 'description', 'name'], 'required'],
            [['short_description', 'description', 'params', 'extra_fields'], 'string'],
            [['product', 'name'], 'string', 'max' => 25]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'product' => 'Product',
            'short_description' => 'Short Description',
            'description' => 'Description',
            'params' => 'Params',
            'extra_fields' => 'Extra Fields',
            'name' => 'Name',
        ];
    }


    /**
     * @return \yii\db\ActiveQuery
     */
    public function getContents()
    {
        return $this->hasMany(Content::className(), ['product_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getFields()
    {

        return $this->hasMany(Field::className(), ['product_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getDevices()
    {
        return $this->hasMany(Device::className(), ['device_product_id' => 'id']);
    }

    public function behaviors()
    {
        return array_merge(
            parent::behaviors(),
            [
                'HasParamsBehavior' => [
                    'class' => HasParamsBehavior::className(),
                    'attribute' => 'extra_fields'
                ],
            ]
        );
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getBrands()
    {
        return $this->hasMany(Brand::className(), ['id' => 'brand_id'])->viaTable(
            'brand_product',
            ['product_id' => 'id']
        );

    }

    /**
     * {@inheritdoc}
     */
    public function getExtraFields()
    {

        return $this->extra_fields;
    }

    /**
     * {@inheritdoc}
     */
    public function setExtraFields(array $extra_fields)
    {
        $this->extra_fields = $extra_fields;

        return $this;
    }

    public function relatedManyToMany($object)
    {
        if ($object == "devices") {

            return new Deviceproduct();
        }
        if ($object == "brands") {

            return new Brandproduct();
        } else {
            return [];
        }


    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getImages()
    {
        return $this->hasMany(File::className(), ['id' => 'image_id'])->viaTable(
            'product_image',
            ['product_id' => 'id']
        );
    }

    public function defaultExpand()
    {
        return ['images'];

    }
//    /**
//     * @return \yii\db\ActiveQuery
//     */
//    public function getDevices()
//    {
//        return $this->hasMany(Brand::className(), ['id' => 'device_id'])->viaTable(
//            'device_product',
//            ['product_id' => 'id']
//        );
//    }
}

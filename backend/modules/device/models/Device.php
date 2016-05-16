<?php

namespace backend\modules\device\models;

use backend\behaviors\HasParamsBehavior;
use backend\modules\brand\models\Brand;
use backend\modules\category\models\Category;
use backend\modules\content\models\Content;
use backend\modules\file\models\File;
use backend\modules\product\models\Product;
use Yii;

/**
 * This is the model class for table "device_device".
 * @property integer $id
 * @property integer $device_brand_id
 * @property integer $device_category_id
 * @property integer $device_product_id
 * @property string $type
 * @property string $name
 * @property string $description
 * @property string $short_description
 * @property string $weight
 * @property string $width
 * @property string $height
 * @property string $depth
 * @property string $price
 * @property string $extra_fields
 * @property string $note
 * @property string $characters
 * @property Brand $brand
 * @property Category $categoryId
 * @property Product $product
 * @property Content[] $contents
 * @property Product[] $deviceProducts
 */
class Device extends \backend\db\Model
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'device_device';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['device_brand_id', 'device_category_id', 'device_product_id'], 'integer'],
            [['type'], 'required'],
            [['name', 'description', 'short_description', 'characters', 'extra_fields'], 'string'],
            [['weight', 'width', 'height', 'depth', 'price'], 'number'],
            [['type', 'note'], 'string', 'max' => 25]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'device_brand_id' => 'Device Brand ID',
            'device_category_id' => 'Device Category ID',
            'device_product_id' => 'Device Product Id',
            'type' => 'Type',
            'name' => 'Name',
            'description' => 'Description',
            'short_description' => 'Short Description',
            'weight' => 'Weight',
            'width' => 'Width',
            'height' => 'Height',
            'extra_fields' => 'Extra Fields',
            'depth' => 'Depth',
            'price' => 'Price',
            'note' => 'Note',
            'characters' => 'Characters',
        ];
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
    public function getBrand()
    {
        return $this->hasOne(Brand::className(), ['id' => 'device_brand_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCategoryId()
    {
        return $this->hasOne(Category::className(), ['id' => 'device_category_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getProduct()
    {
        return $this->hasOne(Product::className(), ['id' => 'device_product_id']);
    }


    /**
     * @return \yii\db\ActiveQuery
     */
    public function getProducts()
    {
        return $this->hasMany(Product::className(), ['id' => 'product_id'])->viaTable(
            'device_product',
            ['device_id' => 'id']
        );
//        return $this->hasOne(Product::className(), ['id' => 'device_product_id']);
    }

    public function getContents()
    {
        return $this->hasMany(Content::className(), ['device_id' => 'id']);
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


    /**
     * @return \yii\db\ActiveQuery
     */
    public function getImages()
    {
        return $this->hasMany(File::className(), ['id' => 'image_id'])->viaTable(
            'device_image',
            ['device_id' => 'id']
        );
    }


    public function defaultExpand()
    {
        return ['brand', 'categoryId', 'product', 'images'];

    }

    public function relatedManyToMany($object)
    {
        if ($object == "products") {

            return new Deviceproduct();
        } else {
            return [];
        }


    }
}

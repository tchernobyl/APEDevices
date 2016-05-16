<?php

namespace backend\modules\brand\models;

use backend\modules\category\models\Category;
use backend\modules\content\models\Content;
use backend\modules\device\models\Device;
use backend\modules\file\models\File;
use backend\modules\product\models\Product;
use Yii;

/**
 * This is the model class for table "brand_brand".
 * @property integer $id
 * @property string $type
 * @property string $updated_at
 * @property string $created_at
 * @property string $short_description
 * @property string $description
 * @property string $name
 * @property Category[] $Categories
 * @property Content[] $contents
 * @property Device[] $devices
 * @property Product[] $products
 */
class Brand extends \backend\db\Model
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'brand_brand';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['type', 'short_description', 'description'], 'string'],
            [['updated_at', 'created_at'], 'safe'],
            [['name'], 'string', 'max' => 11]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'type' => 'Type',
            'updated_at' => 'Updated At',
            'created_at' => 'Created At',
            'short_description' => 'Short Description',
            'description' => 'Description',
            'name' => 'Name',
        ];
    }

    public function getCategories()
    {
        return $this->hasMany(Category::className(), ['id' => 'category_id'])->viaTable(
            'brand_category',
            ['brand_id' => 'id']
        );

    }


    /**
     * @return \yii\db\ActiveQuery
     */
    public function getProducts()
    {
        return $this->hasMany(Product::className(), ['id' => 'product_id'])->viaTable(
            'brand_product',
            ['brand_id' => 'id']
        );

    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getContents()
    {
        return $this->hasMany(Content::className(), ['brand_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getDevices()
    {
        return $this->hasMany(Device::className(), ['device_brand_id' => 'id']);
    }

    public function relatedManyToMany($object)
    {
        if ($object == "categories") {

            return new Brandcategory();
        } else {
            return [];
        }


    }

    public function defaultExpand()
    {
        return ['images'];

    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getImages()
    {
        return $this->hasMany(File::className(), ['id' => 'image_id'])->viaTable(
            'brand_image',
            ['brand_id' => 'id']
        );
    }
}

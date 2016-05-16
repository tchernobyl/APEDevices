<?php

namespace backend\modules\category\models;

use backend\modules\brand\models\Brand;
use backend\modules\brand\models\Brandcategory;
use backend\modules\file\models\File;
use Yii;

/**
 * This is the model class for table "category_category".
 * @property integer $id
 * @property integer $parent_id
 * @property string $slug
 * @property string $name
 * @property string $image
 * @property string $short_description
 * @property string $description
 * @property integer $status
 * @property string $created_at
 * @property string $updated_at
 * @property Category $parent
 * @property Category[] $categories
 * @property Brandcategory[] $brandcategories
 */
class Category extends \backend\db\Model
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'category_category';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['parent_id', 'status'], 'integer'],
            [['slug', 'name', 'description'], 'required'],
            [['short_description', 'description'], 'string'],
            [['slug'], 'string', 'max' => 150],
            [['created_at', 'updated_at'], 'safe'],
            [['name', 'image'], 'string', 'max' => 250]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'parent_id' => 'Parent ID',
            'slug' => 'Slug',
            'name' => 'Name',
            'image' => 'Image',
            'short_description' => 'Short Description',
            'description' => 'Description',
            'status' => 'Status',
            'created_at' => Yii::t('app', 'Created At'),
            'updated_at' => Yii::t('app', 'Updated At'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getParent()
    {
        return $this->hasOne(Category::className(), ['id' => 'parent_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCategories()
    {
        return $this->hasMany(Category::className(), ['parent_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getBrands()
    {
        return $this->hasMany(Brand::className(), ['id' => 'brand_id'])->viaTable(
            'brand_category',
            ['category_id' => 'id']
        );

    }

    /**
     * {@inheritdoc}
     */
    public function getUpdatedAt()
    {
        return $this->updated_at;
    }

    /**
     * {@inheritdoc}
     */
    public function setUpdatedAt($updatedAt)
    {
        $this->updated_at = $updatedAt;

        return $this;
    }

    /**
     * {@inheritdoc}
     */
    public function getCreatedAt()
    {
        return $this->created_at;
    }

    /**
     * {@inheritdoc}
     */
    public function setCreatedAt($createdAt)
    {
        $this->created_at = $createdAt;

        return $this;
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
            'category_image',
            ['category_id' => 'id']
        );
    }
}

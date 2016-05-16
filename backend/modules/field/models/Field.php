<?php

namespace backend\modules\field\models;

use backend\modules\product\models\Product;
use Yii;

/**
 * This is the model class for table "field_field".
 * @property integer $id
 * @property string $name
 * @property string $field
 * @property string $type
 * @property string $description
 * @property string $short_description
 * @property string $created_at
 * @property string $updated_at
 * @property integer $enabled
 * @property integer $product_id
 * @property Product $product
 */
class Field extends \backend\db\Model
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'field_field';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['description', 'short_description'], 'string'],
            [['created_at', 'updated_at'], 'safe'],
            [['enabled', 'product_id'], 'integer'],
            [['name', 'field'], 'string', 'max' => 25],
            [['type'], 'string', 'max' => 30]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'Name',
            'field' => 'Field',
            'type' => 'Type',
            'description' => 'Description',
            'short_description' => 'Short Description',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'enabled' => 'Enabled',
            'product_id' => 'Product ID',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getProduct()
    {
        return $this->hasOne(Product::className(), ['id' => 'product_id']);
    }
}

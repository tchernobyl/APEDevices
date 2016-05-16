<?php

namespace backend\modules\shipping\models;

use Yii;

/**
 * This is the model class for table "shipping_shipping".
 *
 * @property integer $id
 * @property string $name
 * @property string $description
 * @property string $type
 * @property integer $category
 * @property integer $zone-id
 * @property string $configuration
 * @property integer $is_enbabled
 * @property integer $updated_at
 * @property string $tracking_url
 */
class Shipping extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'shipping_shipping';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'name', 'description', 'type', 'category', 'zone-id', 'configuration', 'is_enbabled', 'updated_at', 'tracking_url'], 'required'],
            [['id', 'category', 'zone-id', 'is_enbabled', 'updated_at'], 'integer'],
            [['name', 'description', 'tracking_url'], 'string'],
            [['type'], 'string', 'max' => 40],
            [['configuration'], 'string', 'max' => 20]
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
            'description' => 'Description',
            'type' => 'Type',
            'category' => 'Category',
            'zone-id' => 'Zone ID',
            'configuration' => 'Configuration',
            'is_enbabled' => 'Is Enbabled',
            'updated_at' => 'Updated At',
            'tracking_url' => 'Tracking Url',
        ];
    }
}

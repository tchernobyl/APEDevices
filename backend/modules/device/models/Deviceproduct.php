<?php

namespace backend\modules\device\models;

use backend\modules\product\models\Product;
use Yii;
use yii\data\ActiveDataProvider;

/**
 * This is the model class for table "device_product".
 * @property integer $id
 * @property integer $device_id
 * @property integer $product_id
 * @property string $type
 * @property string $params
 * @property Product $product
 * @property Device $device
 */
class Deviceproduct extends \backend\db\Model
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'device_product';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['device_id', 'product_id'], 'required'],
            [['device_id', 'product_id'], 'integer'],
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
            'device_id' => 'Device ID',
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
    public function getDevice()
    {
        return $this->hasOne(Device::className(), ['id' => 'device_id']);
    }

    public function getIds($Id, $field)
    {
        if ($field == "devices") {


            $query = $this->find()->where(['=', 'device_id', $Id]);
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
                'key' => 'device_id',
            ]);

            return $provider->getKeys();
        } else {
            return [];
        }

    }
}

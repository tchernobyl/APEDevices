<?php

namespace backend\modules\content\models;

use backend\modules\brand\models\Brand;
use backend\modules\category\models\Category;
use backend\modules\device\models\Device;
use backend\modules\file\models\File;
use backend\modules\payment\models\Payment;
use backend\modules\product\models\Product;
use Yii;
use backend\modules\user\models\User;

/**
 * This is the model class for table "content_device".
 * @property integer $id
 * @property integer $device_id
 * @property integer $owner_id
 * @property string $created_at
 * @property string $updated_at
 * @property string $description
 * @property string $short_description
 * @property string $characters
 * @property integer $published
 * @property integer $enabled
 * @property string $name
 * @property string $price
 * @property Device $device
 * @property Category $category
 * @property Product $product
 * @property User $owner
 * @property Brand $brand
 */
class Content extends \backend\db\Model
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'content_device';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['device_id', 'owner_id'], 'required'],
            [['device_id', 'owner_id', 'published', 'enabled'], 'integer'],
            [['created_at', 'updated_at'], 'safe'],
            [['description', 'short_description', 'characters'], 'string'],
            [['name', 'price'], 'string', 'max' => 25]
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
            'owner_id' => 'Owner ID',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'description' => 'Description',
            'short_description' => 'Short Description',
            'characters' => 'Characters',
            'published' => 'Published',
            'enabled' => 'Enabled',
            'name' => 'Name',
            'price' => 'Price',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getDevice()
    {
        return $this->hasOne(Device::className(), ['id' => 'device_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPayment()
    {

        return $this->hasMany(Payment::className(), ['id_content' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getOwner()
    {
        return $this->hasOne(User::className(), ['id' => 'owner_id']);
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
            'content_image',
            ['content_id' => 'id']
        );
    }
}

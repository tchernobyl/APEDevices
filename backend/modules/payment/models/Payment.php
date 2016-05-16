<?php

namespace backend\modules\payment\models;

use backend\modules\content\models\Content;
use Yii;

/**
 * This is the model class for table "payment_payment".
 *
 * @property integer $id
 * @property Content $id_content
 * @property string $date_start
 * @property string $date_end
 * @property string $price
 */
class Payment extends \backend\db\Model
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'payment_payment';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_content', 'date_start', 'date_end', 'price'], 'required'],
            [['id_content', 'price'], 'integer'],
            [['date_start', 'date_end'], 'safe']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'id_content' => 'Id Content',
            'date_start' => 'Date Start',
            'date_end' => 'Date End',
            'price' => 'Price',
        ];
    }
}
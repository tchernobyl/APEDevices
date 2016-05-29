<?php

namespace backend\modules\paymentmethod\models;

use backend\modules\content\models\Content;
use Yii;

/**
 * This is the model class for table "paymentmethod_paymentmethod".
 * @property integer $id
 * @property string $name
 * @property string $description
 * @property string $type
 */
class Paymentmethod extends \backend\db\Model
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'paymentmethod_paymentmethod';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name', 'description', 'type'], 'required'],
            [['name', 'description', 'type'], 'string']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'Payment Name',
            'description' => 'Description Payment',
            'type' => 'type Payment',
        ];
    }
}
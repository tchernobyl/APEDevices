<?php

namespace backend\modules\message\models;

use backend\modules\user\models\User;
use Yii;

/**
 * This is the model class for table "message".
 * @property integer $id
 * @property integer $sender_id
 * @property integer $receiver_id
 * @property string $subject
 * @property string $body
 * @property integer $draft
 * @property integer $is_sent
 * @property integer $is_read
 * @property string $created_at
 * @property string $updated_at
 * @property string $deleted_at
 * @property string $last_read_at
 * @property string $type
 * @property User $receiver
 * @property User $sender
 */
class Message extends \backend\db\Model
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'message';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [
                [
                    'sender_id',
                    'receiver_id',
                    'draft',
                    'is_sent',
                    'is_read',
                    'created_at',
                    'updated_at',
                    'deleted_at',
                    'last_read_at'
                ],
                'required'
            ],
            [['sender_id', 'receiver_id', 'draft', 'is_sent', 'is_read'], 'integer'],
            [['subject', 'body'], 'string'],
            [['created_at', 'updated_at', 'deleted_at', 'last_read_at'], 'safe'],
            [['type'], 'string', 'max' => 20]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'sender_id' => 'Sender ID',
            'receiver_id' => 'Receiver ID',
            'subject' => 'Subject',
            'body' => 'Body',
            'draft' => 'Draft',
            'is_sent' => 'Is Sent',
            'is_read' => 'Is Read',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'deleted_at' => 'Deleted At',
            'last_read_at' => 'Last Read At',
            'type' => 'Type',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getReceiver()
    {
        return $this->hasOne(User::className(), ['id' => 'receiver_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getSender()
    {
        return $this->hasOne(User::className(), ['id' => 'sender_id']);
    }
}

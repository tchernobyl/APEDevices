<?php

namespace backend\modules\user\models;

use backend\modules\content\models\Content;

use backend\modules\file\models\File;
use OAuth2\Storage\UserCredentialsInterface;
use Yii;
use yii\web\IdentityInterface;

/**
 * This is the model class for table "user".
 * @property integer $id
 * @property string $username
 * @property string $auth_key
 * @property string $password_hash
 * @property string $password_reset_token
 * @property string $email
 * @property integer $status
 * @property string $created_at
 * @property string $updated_at
 * @property string $activated_at
 * @property Content[] $contentDevices
 */
class User extends \backend\db\Model implements \yii\web\IdentityInterface, UserCredentialsInterface
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'user';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['username', 'email', 'first_name', 'last_name'], 'required'],
            [['status'], 'integer'],
            [['activated_at', 'created_at', 'updated_at', 'last_login'], 'safe'],
            [['username', 'password_hash', 'password_reset_token', 'email'], 'string', 'max' => 255],
            [
                ['auth_key', 'first_name', 'last_name', 'created_at', 'updated_at', 'activated_at', 'last_login'],
                'string',
                'max' => 32
            ]
        ];
    }

    public function fields()
    {
        return [
            'id' => 'id',
            'email' => 'email',
            'username' => 'username',
            'status' => 'status',
            'first_name' => 'first_name',
            'last_name' => 'last_name',
            'activation_code' => 'activation_code',
            'activated_at' => 'activated_at',
            'created_at' => 'created_at',
            'updated_at' => 'updated_at',
            'last_login' => 'last_login',

        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'username' => 'Username',
            'auth_key' => 'Auth Key',
            'password_hash' => 'Password Hash',
            'password_reset_token' => 'Password Reset Token',
            'email' => 'Email',
            'status' => 'Status',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getContentDevices()
    {
        return $this->hasMany(Content::className(), ['owner_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getImages()
    {
        return $this->hasMany(File::className(), ['id' => 'image_id'])->viaTable(
            'user_image',
            ['user_id' => 'id']
        );
    }

    /**
     * Generates the password hash.
     * @param string $password
     * @return string hash
     */
    public function hashPassword($password)
    {

        return md5($password);
    }

    /**
     * Validates password
     * @param  string $password password to validate
     * @return boolean if password provided is valid for current user
     */
    public function validatePassword($password)
    {


        return $this->password_hash === $this->hashPassword($password);
    }


    /**
     * Finds user by username
     * @param  string $username
     * @return User
     */
    public static function findByUsername($username)
    {
        return self::find()->where(['username' => $username])->orWhere(['email' => $username])->one();
    }


    public function checkUserCredentials($username, $password)
    {


        if (!$user = $this->findByUsername($username)) {
            return false;
        }

        if (!$user->validatePassword($password)) {
            return false;
        }

        return true;
    }

    public function getUserDetails($username)
    {
        $user = $this->findByUsername($username);

        return array(
            'user_id' => $user->id
        );
    }

    /**
     * @inheritdoc
     */
    public static function findIdentity($id)
    {
        return self::findOne($id);
    }

    /**
     * @inheritdoc
     */
    public static function findIdentityByAccessToken($token, $type = null)
    {


        if (class_exists($type, false) and method_exists($type, 'findIdentityByAccessToken')) {
            $user = $type::findIdentityByAccessToken($token);
            if ($user) {
                return $user;
            }
        }

        return null;
    }

    /**
     * @inheritdoc
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * @inheritdoc
     */
    public function getAuthKey()
    {
        return $this->authKey;
    }

    /**
     * @inheritdoc
     */
    public function validateAuthKey($authKey)
    {
        return $this->authKey === $authKey;
    }
}

<?php

namespace backend\oauth\filters\auth;

use backend\oauth\models\OauthAccessTokens;

class HttpBearerAuth extends \yii\filters\auth\HttpBearerAuth
{
    public static function findIdentityByAccessToken($token)
    {
        $token = OauthAccessTokens::getActiveToken($token);
        $userClass = \Yii::$app->user->identityClass;
        $user = $userClass::findIdentity($token['user_id']);

        return $user;
    }
}
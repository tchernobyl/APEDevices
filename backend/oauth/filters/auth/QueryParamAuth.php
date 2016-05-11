<?php

namespace backend\oauth\filters\auth;


use backend\oauth\models\OauthAccessTokens;

class QueryParamAuth extends \yii\filters\auth\QueryParamAuth
{
    public static function findIdentityByAccessToken($token)
    {
        $token = OauthAccessTokens::getActiveToken($token);
        $userClass = \Yii::$app->user->identityClass;
        $user = $userClass::findIdentity($token['user_id']);

        return $user;
    }
} 
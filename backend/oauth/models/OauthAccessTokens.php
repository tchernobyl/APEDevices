<?php

namespace backend\oauth\models;


use yii\db\ActiveQuery;

class OauthAccessTokens extends \filsh\yii2\oauth2server\models\OauthAccessTokens
{
    public static function getActiveToken($token)
    {
        $activeQuery = new ActiveQuery(self::className());
        $activeQuery->where('access_token = :token', [':token' => $token]);
        $activeQuery->andWhere('expires > now()');
        $token = $activeQuery->one();

        return $token;
    }
}
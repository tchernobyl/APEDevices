<?php

namespace backend\oauth\controllers;

use backend\oauth\models\OauthAccessTokens;
use filsh\yii2\oauth2server\filters\ErrorToExceptionFilter;
use Yii;
use yii\helpers\ArrayHelper;
use yii\web\HttpException;

class DefaultController extends \yii\rest\Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {

        return ArrayHelper::merge(
            parent::behaviors(),
            [
                'exceptionFilter' => [
                    'class' => ErrorToExceptionFilter::className()
                ],
                'corsFilter' => [
                    'class' => \backend\rest\filters\Cors::className(),
                    'cors' => [
                        // restrict access to
                        'Origin' => ['*'],
                        'Access-Control-Request-Method' => ['POST', 'PUT', 'OPTIONS', 'PATCH', 'DELETE'],
                        // Allow only POST and PUT methods
                        'Access-Control-Request-Headers' => [
                            'X-Pagination-Total-Count',
                            'X-Pagination-Page-Count',
                            'X-Pagination-Current-Page',
                            'X-Pagination-Per-Page',
                            'Content-Length',
                            'Content-type',
                            'Link',
                        ],
                        // Allow only headers 'X-Wsse'
                        'Access-Control-Allow-Credentials' => true,
                        // Allow OPTIONS caching
                        'Access-Control-Max-Age' => 3600,
                        'Access-Control-Expose-Headers' => [
                            'X-Pagination-Total-Count',
                            'X-Pagination-Page-Count',
                            'X-Pagination-Current-Page',
                            'X-Pagination-Per-Page',
                            'Content-Length',
                            'Content-type',
                            'Link',
                        ],
                        'Access-Control-Allow-Headers' => [
                            'X-Pagination-Total-Count',
                            'X-Pagination-Page-Count',
                            'X-Pagination-Current-Page',
                            'X-Pagination-Per-Page',
                            'Content-Length',
                            'Content-type',
                            'Link',
                        ]
                    ]
                ]
            ]
        );
    }

    public function actionToken()
    {
        $server = $this->module->getServer();
        $request = $this->module->getRequest();

        $response = $server->handleTokenRequest($request);
        $user = Yii::$app->user->identity;
        $resp = $response->getParameters();
        if ($resp["access_token"] && $resp["refresh_token"]) {

            $resp["user"] = $user;
        }

        return $resp;
    }

    public function actionLogout($token)
    {
        $token = OauthAccessTokens::getActiveToken($token);
        if ($token) {
            $token->setAttribute('expires', date('y-m-d h:i:s', time() - 86400));
            $token->save();
        } else {
            throw(new HttpException(404, 'Token not found'));
        }


        return $token;
    }

    protected function verbs()
    {
        return ['GET', 'POST', 'PUT', 'DELETE', 'OPTIONS', 'PATCH'];
    }
}
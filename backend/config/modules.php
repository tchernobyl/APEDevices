<?php

return [

    'backend' => [
        'class' => 'backend\Module',
        'basePath' => '@backend',
    ],
    'oauth2' => [
        'class' => 'backend\oauth\Module',
        'tokenParamName' => 'accessToken',
        'tokenAccessLifetime' => 3600 * 24,
        'storageMap' => [
            'user_credentials' => 'backend\modules\user\models\User'
        ],
        'modelMap' => [
            'AccessTokens' => 'backend\oauth\models\OauthAccessTokens',
        ],
        'grantTypes' => [
            'client_credentials' => [
                'class' => '\OAuth2\GrantType\ClientCredentials',
                'allow_public_clients' => false
            ],
            'user_credentials' => [
                'class' => '\OAuth2\GrantType\UserCredentials'
            ],
            'refresh_token' => [
                'class' => '\OAuth2\GrantType\RefreshToken',
                'always_issue_new_refresh_token' => true
            ]
        ],
    ],

];
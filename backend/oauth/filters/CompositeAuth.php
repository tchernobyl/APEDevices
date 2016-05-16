<?php

namespace backend\oauth\filters;


use Yii;

class CompositeAuth extends \filsh\yii2\oauth2server\filters\auth\CompositeAuth
{
    /**
     * @inheritdoc
     */
    public function challenge($response)
    {
        foreach ($this->authMethods as $method) {
            if (is_object($method)) {
                $method->challenge($response);
            }
        }
    }
}
<?php

namespace backend\modules\customer\controllers\actions;

use backend\modules\customer\models\Customer;
use yii\data\ActiveDataProvider;
use yii\rest\Action;
use yii\web\HttpException;

class SignUpAction extends Action
{
    /**
     * @var callable a PHP callable that will be called to prepare a data provider that
     * should return a collection of the models. If not set, [[prepareDataProvider()]] will be used instead.
     * The signature of the callable should be:
     * ```php
     * function ($action) {
     *     // $action is the action object currently running
     * }
     * ```
     * The callable should return an instance of [[ActiveDataProvider]].
     */
    public $prepareDataProvider;


    public function run()
    {
        $userFieldsRequest = \Yii::$app->getRequest()->getBodyParams();
        $userFieldsToSave = [];
        $userFieldsRules = ['firstName', 'lastName', 'username', 'email', 'password', 'password2'];
        $password = \Yii::$app->getRequest()->getBodyParam('password');
        $password2 = \Yii::$app->getRequest()->getBodyParam('password2');
        $username = \Yii::$app->getRequest()->getBodyParam('username');
        $email = \Yii::$app->getRequest()->getBodyParam('email');
        if (empty($email)) {
            throw(new HttpException('400', ' password required'));
        }
        if (empty($password)) {
            throw(new HttpException('400', ' password required'));
        }
        if ($password != $password2) {
            throw(new HttpException('400', 'Password mismatch'));
        }
        if (empty($username)) {
            throw(new HttpException('400', ' username required'));
        }

        foreach ($userFieldsRequest as $item => $value) {
            if (in_array($item, $userFieldsRules)) {
                $userFieldsToSave[$item] = $value;
            }
        }
        $userFieldsToSave['status'] = 4;


        $model1 = Customer::findByUsername($email);


        if ($model1) {
            throw(new HttpException('400', ' this email is already in use'));
        } else {
            $model1 = Customer::findByUsername($username);
            if ($model1) {
                throw(new HttpException('400', ' this user name is already in use'));
            } else {
                $model = new Customer();
                $model->password_hash = $model->hashPassword($password);
                $model->load($userFieldsRequest, '');
                $model->save();
                return $model;
            }
        }


    }


    protected function prepareDataProvider()
    {

        $userFieldsRequest = \Yii::$app->getRequest()->getBodyParams();
        var_dump($userFieldsRequest);
        exit;
    }
}

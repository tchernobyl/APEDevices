<?php

namespace backend\modules\paymentmethod\controllers;

use yii\web\Controller;
use backend\APEDevices\components\controllers\ControllerAPED;

class PaymentmethodController extends ControllerAPED
{
    public $modelClass = 'backend\modules\paymentmethod\models\Paymentmethod';

}

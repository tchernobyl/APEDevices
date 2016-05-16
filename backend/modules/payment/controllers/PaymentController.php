<?php

namespace backend\modules\payment\controllers;

use yii\web\Controller;
use backend\APEDevices\components\controllers\ControllerAPED;

class PaymentController extends ControllerAPED
{
    public $modelClass = 'backend\modules\payment\models\Payment';

}

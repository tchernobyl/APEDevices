<?php
/**
 * @version    UploadController.php 0.1
 * @package    backend\modules\file\controllers
 * @subpackage
 * @category   Controller
 * @author     Hamza Chouaibi {@link http://portalsway.com} {@link hamza.chouaibi[at]gmail[dot]com}
 * @author     Created on Sun, 11 Aug 2013 14:50:52 +0000
 * @license    GNU/GPL
 */

namespace backend\modules\file\controllers;


use backend\APEDevices\components\controllers\ControllerAPED;

class FileController extends ControllerAPED
{
    public $modelClass = 'backend\modules\file\models\File';


    public function actions()
    {
        return array_merge(
            parent::actions(),
            [
                'create' => [
                    'class' => 'backend\modules\file\controllers\actions\CreateAction',
                    'modelClass' => $this->modelClass,
//                    'checkAccess' => [$this, 'checkAccess'],
                ],
                'index' => [
                    'class' => 'backend\modules\file\controllers\actions\IndexAction',
                    'modelClass' => $this->modelClass,
//                    'checkAccess' => [$this, 'checkAccess'],
                ]
            ]
        );
    }
}
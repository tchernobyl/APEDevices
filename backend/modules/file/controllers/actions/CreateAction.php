<?php
/**
 * @version    CreateAction.php 0.1
 * @package    backend\modules\file\controllers\actions
 * @subpackage
 * @category   Controller
 * @author     Hamza Chouaibi {@link http://portalsway.com} {@link hamza.chouaibi[at]gmail[dot]com}
 * @author     Created on Sun, 11 Aug 2013 14:50:52 +0000
 * @license    GNU/GPL
 */

namespace backend\modules\file\controllers\actions;

use backend\modules\file\storage\StorageInterface;
use Yii;
use yii\helpers\Url;

class CreateAction extends \yii\rest\CreateAction
{
    /**
     * Creates a new model.
     * @return \yii\db\ActiveRecordInterface the model newly created
     * @throws \Exception if there is any error when creating the model
     */
    public function run()
    {
        if ($this->checkAccess) {
            call_user_func($this->checkAccess, $this->id);
        }

        /**
         * @var \yii\db\ActiveRecord $model
         */
        $model = new $this->modelClass(
            [
                'scenario' => $this->scenario,
            ]
        );

        $model->load(Yii::$app->getRequest()->getBodyParams(), '');
        $folder = \Yii::$app->getRequest()->getQueryParam('folder');
        $isPrivate = \Yii::$app->getRequest()->getQueryParam('is_private');
        $model->setAttribute('folder', $folder);

        $storageId = Yii::$app->get('settings')->get('File.storageId');
        /** @var StorageInterface $storage */
        $storage = $this->controller->module->getStorage($storageId);
        $storage->upload($model, 'file', $isPrivate);


        $model->on('afterInsert', array('backend\eventListener\SaveRelatedListener', 'saveRelated'));
        $model->on('beforeValidate', array('backend\eventListener\SaveRelatedListener', 'beforeValidate'));
        $model->on(
            'afterInsert',
            array('backend\modules\file\eventListener\ResizeLogoFIle', 'createSpecialLogo')
        );
        $model->on(
            'afterUpdate',
            array('backend\modules\file\eventListener\ResizeLogoFIle', 'createSpecialLogo')
        );


        $model->save();
        $model->afterFind();


        if (!$model->hasErrors()) {
            $response = Yii::$app->getResponse();
            $response->setStatusCode(201);
            $id = implode(',', array_values($model->getPrimaryKey(true)));
            $response->getHeaders()->set('Location', Url::toRoute([$this->viewAction, 'id' => $id], true));
        }

        return $model;
    }
}
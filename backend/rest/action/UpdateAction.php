<?php
/**
 * @version    UpdateAction.php 0.1
 * @package    backend\rest\action
 * @subpackage
 * @category   Controller
 * @author     Hamza Chouaibi {@link http://portalsway.com} {@link hamza.chouaibi[at]gmail[dot]com}
 * @author     Created on Sun, 11 Aug 2013 14:50:52 +0000
 * @license    GNU/GPL
 */

namespace backend\rest\action;

use backend\db\Model;

class UpdateAction extends \yii\rest\UpdateAction
{
    /**
     * Updates an existing model.
     * @param string $id the primary key of the model.
     * @return \yii\db\ActiveRecordInterface the model being updated
     * @throws \Exception if there is any error when updating the model
     */
    public function run($id)
    {
        /* @var $model Model */
        $model = $this->findModel($id);

        if ($this->checkAccess) {
            call_user_func($this->checkAccess, $this->id, $model);
        }


        $model->on('afterUpdate', array('backend\eventListener\SaveRelatedListener', 'saveRelated'));
        $model->on('beforeValidate', array('backend\eventListener\SaveRelatedListener', 'beforeValidate'));

        $model->scenario = $this->scenario;
        $model->load(\Yii::$app->getRequest()->getBodyParams(), '');
        $model->save();
        $model->refresh();

        return $model;
    }
} 
<?php
/**
 * @version    DeleteAction.php 0.1
 * @package    backend\modules\file\controllers\actions
 * @subpackage
 * @category   Controller
 * @author     Hamza Chouaibi {@link http://portalsway.com} {@link hamza.chouaibi[at]gmail[dot]com}
 * @author     Created on Sun, 11 Aug 2013 14:50:52 +0000
 * @license    GNU/GPL
 */

namespace backend\modules\file\controllers\actions;


use backend\modules\file\models\File;
use Yii;

class DeleteAction extends \yii\rest\DeleteAction
{
    /**
     * Creates a new model.
     * @return \yii\db\ActiveRecordInterface the model newly created
     * @throws \Exception if there is any error when creating the model
     */
    public function run($id)
    {
        /** @var File $model */
        $model = $this->findModel($id);

        if ($this->checkAccess) {
            call_user_func($this->checkAccess, $this->id, $model);
        }

        $path = $model->getPath();
        if (file_exists($path)) {
            if (unlink($path)) {
                $model->delete();
            }
        }


        Yii::$app->getResponse()->setStatusCode(204);

        return $model;
    }
}
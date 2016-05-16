<?php
/**
 * @version    DeleteAction.php 0.1
 * @package    backend\rest\action
 * @subpackage
 * @category   Controller
 * @author     Hamza Chouaibi {@link http://portalsway.com} {@link hamza.chouaibi[at]gmail[dot]com}
 * @author     Created on Sun, 11 Aug 2013 14:50:52 +0000
 * @license    GNU/GPL
 */

namespace backend\rest\action;

use Yii;
use yii\web\HttpException;

class DeleteAction extends \yii\rest\DeleteAction
{
    /**
     * Deletes a model.
     * @param mixed $id id of the model to be deleted.
     */
    public function run($id)
    {
        $model = $this->findModel($id);

        if ($this->checkAccess) {
            call_user_func($this->checkAccess, $this->id, $model);
        }

        if (!$model->delete()) {
            throw(new HttpException(400, 'Delete failed for unknown reason, please report this issue', 1022));
        }

        Yii::$app->getResponse()->setStatusCode(204);
    }
} 
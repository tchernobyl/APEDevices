<?php
/**
 * @version    IndexAction.php 0.1
 * @package    backend\modules\file\controllers\actions
 * @subpackage
 * @category   Controller
 * @author     Hamza Chouaibi {@link http://portalsway.com} {@link hamza.chouaibi[at]gmail[dot]com}
 * @author     Created on Sun, 11 Aug 2013 14:50:52 +0000
 * @license    GNU/GPL
 */

namespace backend\modules\file\controllers\actions;

use yii\data\ActiveDataProvider;

class IndexAction extends \backend\rest\action\IndexAction
{
    /**
     * Prepares the data provider that should return the requested collection of the models.
     * @return ActiveDataProvider
     */
    protected function prepareDataProvider()
    {
        $activeDataProvider = parent::prepareDataProvider();

        $folder = \Yii::$app->request->getQueryParam('folder');
        if ($folder) {
            $activeDataProvider->query->andWhere(['like', 'path', $folder]);
        }

        return $activeDataProvider;
    }
}
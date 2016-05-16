<?php
/**
 * @version    Between.php 0.1
 * @package    backend\rest\component\query\filters
 * @subpackage
 * @category   Controller
 * @author     Hamza Chouaibi {@link http://portalsway.com} {@link hamza.chouaibi[at]gmail[dot]com}
 * @author     Created on Sun, 11 Aug 2013 14:50:52 +0000
 * @license    GNU/GPL
 */

namespace backend\rest\component\query\filters;


use yii\data\ActiveDataProvider;
use yii\helpers\ArrayHelper;
use yii\helpers\Inflector;

class Between extends FilterAbstract
{
    protected $optionFields = array('field', 'from', 'to');

    public function filter(ActiveDataProvider &$activeDataProvider, $query)
    {
        $fieldName = Inflector::camel2id(ArrayHelper::getValue($query, 'field'), '_');
        $from = ArrayHelper::getValue($query, 'from', null);
        $to = ArrayHelper::getValue($query, 'to', null);
        $glue = ArrayHelper::getValue($query, 'glue', 'and');
        if ($glue == 'and') {
            $activeDataProvider->query->andWhere(['between', $fieldName, $from, $to]);
        } else {
            $activeDataProvider->query->orWhere(['between', $fieldName, $from, $to]);
        }
    }

    public function validate($query)
    {
        parent::validateOption($query);

        return true;
    }
}
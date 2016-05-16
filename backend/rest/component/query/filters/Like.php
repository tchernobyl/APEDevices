<?php
/**
 * @version    Like.php 0.1
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

class Like extends FilterAbstract
{
    public function filter(ActiveDataProvider &$activeDataProvider, $query)
    {
        $fieldName = Inflector::camel2id(ArrayHelper::getValue($query, 'field'), '_');
        $value = ArrayHelper::getValue($query, 'value', array());
        $glue = ArrayHelper::getValue($query, 'glue', 'and');

        $value = explode(',', $value);
        if ($glue == 'and') {
            $activeDataProvider->query->andWhere(['like', $fieldName, $value]);
        } else {
            $activeDataProvider->query->orWhere(['like', $fieldName, $value]);
        }
    }

    public function validate($query)
    {
        parent::validateOption($query);
        if (!isset($query['value'])) {
            throw(new FilterParamMissingException('value'));
        }

        return true;
    }
}
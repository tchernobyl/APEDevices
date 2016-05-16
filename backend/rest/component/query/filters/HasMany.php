<?php
/**
 * @version    Like23.php 0.1
 * @package    backend\rest\component\query\filters
 * @subpackage
 * @category   Controller
 * @author     Hamza Chouaibi {@link http://portalsway.com} {@link hamza.chouaibi[at]gmail[dot]com}
 * @author     Created on Sun, 11 Aug 2013 14:50:52 +0000
 * @license    GNU/GPL
 */

namespace backend\rest\component\query\filters;


use backend\modules\brand\models\Brandcategory;
use yii\data\ActiveDataProvider;
use yii\helpers\ArrayHelper;
use yii\helpers\Inflector;

class HasMany extends FilterAbstract
{
    public function filter(ActiveDataProvider &$activeDataProvider, $query)
    {


        //TODO correct error "x-pagination-total-count"
        $fieldName = Inflector::camel2id(ArrayHelper::getValue($query, 'field'), '_');
        $value = ArrayHelper::getValue($query, 'value', array());
        $glue = ArrayHelper::getValue($query, 'glue', 'and');
        $currentObject = new $activeDataProvider->query->modelClass;
        $object = $currentObject->relatedManyToMany($fieldName);
        $keys = $object->getIds($value, $fieldName);


        if ($glue == 'and') {
            $activeDataProvider->query->andFilterWhere(['in', 'id', $keys]);
        } else {
            $activeDataProvider->query->orFilterWhere(['in', 'id', $keys]);

        }

    }

    public function validate($query)
    {
        parent::validateOption($query);
        if (!isset($query['field'])) {
            throw(new FilterParamMissingException('field'));
        }

        return true;
    }
}
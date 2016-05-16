<?php
/**
 * @version    FilterAbstract.php 0.1
 * @package    backend\rest\component\query
 * @subpackage
 * @category   Controller
 * @author     Hamza Chouaibi {@link http://portalsway.com} {@link hamza.chouaibi[at]gmail[dot]com}
 * @author     Created on Sun, 11 Aug 2013 14:50:52 +0000
 * @license    GNU/GPL
 */

namespace backend\rest\component\query\filters;


use backend\rest\component\query\FilterFiledMissingException;
use yii\data\ActiveDataProvider;

abstract class FilterAbstract implements FilterInterface
{
    protected $optionFields = array('field');
    protected $query;

    abstract function filter(ActiveDataProvider &$activeDataProvider, $query);

    public function validate($query)
    {
        $this->validateOption($query);

        return true;
    }

    protected function validateOption($option)
    {
        foreach ($this->getOptionFields() as $fieldName) {
            if (!isset($option[$fieldName])) {
                throw(new FilterFiledMissingException($fieldName));
            }
        }
    }

    protected function getOptionFields()
    {
        return $this->optionFields;
    }
}
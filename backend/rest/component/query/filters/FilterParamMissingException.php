<?php
/**
 * @version    FilterParamMissingException.php 0.1
 * @package    backend\rest\component\query\filters
 * @subpackage
 * @category   Controller
 * @author     Hamza Chouaibi {@link http://portalsway.com} {@link hamza.chouaibi[at]gmail[dot]com}
 * @author     Created on Sun, 11 Aug 2013 14:50:52 +0000
 * @license    GNU/GPL
 */

namespace backend\rest\component\query\filters;


use yii\base\Exception;

class FilterParamMissingException extends Exception
{
    public function __construct($field)
    {
        parent::__construct(sprintf("Param \"%s\" is required", $field));
    }
}
<?php
/**
 * @version    FilterNotFoundException.php 0.1
 * @package    backend\rest\component\query
 * @subpackage
 * @category   Controller
 * @author     Hamza Chouaibi {@link http://portalsway.com} {@link hamza.chouaibi[at]gmail[dot]com}
 * @author     Created on Sun, 11 Aug 2013 14:50:52 +0000
 * @license    GNU/GPL
 */

namespace backend\rest\component\query;


use yii\base\Exception;

class FilterNotFoundException extends Exception
{
    public function __construct($filterName, $code = 500)
    {
        parent::__construct(sprintf("Filter %s was not found in the filter registry", $filterName), $code);
    }
} 
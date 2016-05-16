<?php
/**
 * @version    FilterRegistry.php 0.1
 * @package    backend\rest\component\query
 * @subpackage
 * @category   Controller
 * @author     Hamza Chouaibi {@link http://portalsway.com} {@link hamza.chouaibi[at]gmail[dot]com}
 * @author     Created on Sun, 11 Aug 2013 14:50:52 +0000
 * @license    GNU/GPL
 */

namespace backend\rest\component\query;

use backend\rest\component\query\filters\FilterInterface;
use yii\base\Component;

class FilterRegistry extends Component implements FilterRegistryInterface
{
    public $filters = array();

    public function init()
    {
        foreach ($this->filters as $key => $filterClass) {
            $this->filters[$key] = new $filterClass;
        }
    }

    public function register($key, $filter)
    {
        $this->filters[$key] = $filter;
    }

    /**
     * @param $key
     * @return FilterInterface
     * @throws FilterNotFoundException
     */
    public function get($key)
    {
        if (isset($this->filters[$key]) and $this->filters[$key] instanceof FilterInterface) {
            return $this->filters[$key];
        }

        throw(new FilterNotFoundException($key));
    }
} 
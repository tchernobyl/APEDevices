<?php
/**
 * @version    Parser.php 0.1
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

class FilterManager extends Component
{
    public function apply($dataProvider, $queries)
    {
        /** @var FilterRegistry $filterRegistry */
        $filterRegistry = \Yii::$app->get('filterRegistry');
        foreach ($queries as $query) {
            $filter = $filterRegistry->get($this->getType($query));
            $this->executeFilter($filter, $dataProvider, $query);
        }
    }

    protected function executeFilter(FilterInterface $filter, $dataProvider, $query)
    {
        if ($filter->validate($query)) {
            $filter->filter($dataProvider, $query);
        }
    }

    private function getType($query)
    {
        if (isset($query['type']) and $query['type'] != null) {
            return $query['type'];
        }

        throw(new QueryTypeRequiredException('Query type required'));
    }
}
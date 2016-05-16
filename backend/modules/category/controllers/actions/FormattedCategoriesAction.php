<?php
/**
 * @version    FormattedCategoriesAction.php 0.1
 * @package    backend\modules\category\controllers\actions
 * @subpackage
 * @category   Controller
 * @author     Portals way 2 {@link http://portalsway.com}
 * @author     Created on  27 Jul 2015 14:50:52 +0000
 * @license    GNU/GPL
 */


namespace backend\modules\category\controllers\actions;


use yii\rest\Action;

class FormattedCategoriesAction extends Action
{


    public function run($parent_id = null)
    {
        return $this->getFormattedList($parent_id);
    }


    public function getFormattedList($parent_id = null, $level = 0, $criteria = null, $testArray = [])
    {


//        if(array_key_exists( strval($level), $testArray )===false) {
//
//            $testArray[$level]=[];
//        }


        $modelClass = $this->modelClass;
        $categories = $modelClass::findAll(array('parent_id' => $parent_id));

        $list = [];


        foreach ($categories as $category) {
//            array_push($testArray[$level],$category->id);
            $name = str_repeat('_', $level) . $category->name;

            array_push(
                $list,
                array(
                    "name" => $name,
                    "defaultName" => $category->name,
                    "id" => $category->id,
                    "level" => $level,
                    "parentId" => $parent_id
                )
            );


            $list = $this->mergeArray($list, $this->getFormattedList($category->id, $level + 1, $criteria, $testArray));
        }


        return $list;
    }

    private function mergeArray($a, $b)
    {
        $args = func_get_args();
        $res = array_shift($args);
        while (!empty($args)) {
            $next = array_shift($args);
            foreach ($next as $k => $v) {
                if (is_integer($k))
                    isset($res[$k]) ? $res[] = $v : $res[$k] = $v;
                elseif (is_array($v) && isset($res[$k]) && is_array($res[$k])) {
                    $res[$k] = self::mergeArray($res[$k], $v);
                } else
                    $res[$k] = $v;
            }
        }
        return $res;
    }
}
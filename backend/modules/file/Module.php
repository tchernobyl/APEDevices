<?php
/**
 * @version    Module.php 0.1
 * @package    backend\modules\file
 * @subpackage
 * @category   Controller
 * @author     Hamza Chouaibi {@link http://portalsway.com} {@link hamza.chouaibi[at]gmail[dot]com}
 * @author     Created on Sun, 11 Aug 2013 14:50:52 +0000
 * @license    GNU/GPL
 */

namespace backend\modules\file;


use backend\modules\file\storage\GenericStorage;

class Module extends \yii\base\Module
{
    public $storages;

    public function getStorage($id)
    {
        if (isset($this->storages[$id])) {
            $storage = $this->storages[$id];
        } else {
            $storage = new GenericStorage();
        }

        return $storage;
    }
}
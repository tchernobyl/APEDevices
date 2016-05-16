<?php
/**
 * @version    ResolveFieldsEvent.php 0.1
 * @package    backend\db\event
 * @subpackage
 * @category   Controller
 * @author     Hamza Chouaibi {@link http://portalsway.com} {@link hamza.chouaibi[at]gmail[dot]com}
 * @author     Created on Sun, 11 Aug 2013 14:50:52 +0000
 * @license    GNU/GPL
 */

namespace backend\db\event;


use yii\base\Event;

class ToArrayEvent extends Event
{
    public $result;

    public function __construct($config = [], &$result = [])
    {
        parent::__construct($config);
        $this->result = & $result;
    }

    public function getResult()
    {
        return $this->result;
    }

    public function setResult($result)
    {
        $this->result = $result;
    }
}
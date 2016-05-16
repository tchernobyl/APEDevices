<?php
/**
 * @version    HasStateMachineInterface.php 0.1
 * @package    backend\SM
 * @subpackage
 * @category   Controller
 * @author     Hamza Chouaibi {@link http://portalsway.com} {@link hamza.chouaibi[at]gmail[dot]com}
 * @author     Created on Sun, 11 Aug 2013 14:50:52 +0000
 * @license    GNU/GPL
 */

namespace backend\SM;


interface StateMachineAwareInterface
{
    public function getStateMachineConfig();
}
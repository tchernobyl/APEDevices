<?php
/**
 * @version    StorageInterface.php 0.1
 * @package    backend\modules\file\storage
 * @subpackage
 * @category   Controller
 * @author     Hamza Chouaibi {@link http://portalsway.com} {@link hamza.chouaibi[at]gmail[dot]com}
 * @author     Created on Sun, 11 Aug 2013 14:50:52 +0000
 * @license    GNU/GPL
 */

namespace backend\modules\file\storage;


use backend\modules\file\fileInterface\FileInterface;

interface StorageInterface
{
    const MEDIA_PATH = 'media';

    /**
     * Upload the file
     * @param FileInterface $model
     * @param $attribute
     * @param boolean $isPrivate
     * @return mixed
     */
    public function upload(FileInterface &$model, $attribute, $isPrivate);
} 
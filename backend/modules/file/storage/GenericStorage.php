<?php
/**
 * @version    GenericStorage.php 0.1
 * @package    ${NAMESPACE}
 * @subpackage
 * @category   Controller
 * @author     Hamza Chouaibi {@link http://portalsway.com} {@link hamza.chouaibi[at]gmail[dot]com}
 * @author     Created on Sun, 11 Aug 2013 14:50:52 +0000
 * @license    GNU/GPL
 */

namespace backend\modules\file\storage;

use backend\modules\file\fileInterface\FileInterface;
use backend\modules\file\models\File;
use yii\helpers\FileHelper;

/**
 * @version    GenericStorage.php 0.1
 * @package    ${NAMESPACE}
 * @subpackage
 * @category   Controller
 * @author     Hamza Chouaibi {@link http://portalsway.com} {@link hamza.chouaibi[at]gmail[dot]com}
 * @author     Created on Sun, 11 Aug 2013 14:50:52 +0000
 * @license    GNU/GPL
 */
class GenericStorage extends \yii\base\Component implements StorageInterface
{
    /**
     * @param $folder
     * @return bool
     */
    public function createFolder($folder, $recursive)
    {
        return \yii\helpers\FileHelper::createDirectory($folder, 0775, $recursive);
    }

    public function upload(FileInterface &$model, $attribute, $isPrivate = null)
    {
        $file = \yii\web\UploadedFile::getInstanceByName($attribute);

        $destination = $this->getDestinationFolder($model->getFolder(), $isPrivate);

        $destination .= DIRECTORY_SEPARATOR . $file->baseName . '.' . $file->extension;

        if (file_exists($destination) and File::findOne(['path' => $destination])) {
            $model = File::findOne(['path' => $destination]);
        } else {
            $model->setPath($destination);
            $model->setExtension($file->extension);
            $model->setSystemName($file->baseName);
        }
        if (!$file->saveAs($destination)) {
            return false;
        }

        return true;
    }

    public function getDestinationFolder($folder, $isPrivate = null)
    {
        $basePath = \Yii::$app->getBasePath();
        if ($isPrivate) {
            $path = $basePath . DIRECTORY_SEPARATOR . 'files' . DIRECTORY_SEPARATOR . $folder;
        } else {
            $path = $basePath . DIRECTORY_SEPARATOR . 'web' . DIRECTORY_SEPARATOR . StorageInterface::MEDIA_PATH . DIRECTORY_SEPARATOR . $folder;
        }

        if (!is_dir($path)) {
            FileHelper::createDirectory($path, 0775, true);
        }

        return $path;
    }
} 
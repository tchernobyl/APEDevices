<?php

namespace backend\modules\file\models;

use backend\modules\file\storage\StorageInterface;
use backend\modules\file\fileInterface\FileInterface;
use Yii;

/**
 * This is the model class for table "file".
 * @property integer $id
 * @property string $path
 * @property string $description
 * @property string $mime_type
 * @property string $extension
 * @property string $created_at
 * @property string $updated_at
 */
class File extends base\File implements FileInterface
{
    public $url;

    public function afterFind()
    {
        parent::afterFind();

        $url = Yii::$app->get('settings')->get('system.public_url');

        if (!$url) {
            $url = Yii::$app->urlManager->getHostInfo() . Yii::$app->urlManager->getBaseUrl(
                ) . '/' . StorageInterface::MEDIA_PATH . '/';
        }

        $url .= $this->folder . '/' . $this->getSystemName() . '.' . $this->getExtension();
        $this->url = $url;
    }

    /**
     * @return string
     */
    public function getSystemName()
    {
        return $this->system_name;
    }

    /**
     * Get file extension
     * @return mixed
     */
    public function getExtension()
    {
        return $this->extension;
    }

    /**
     * Get name
     * @return mixed
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * Set file path
     * @param $path
     * @return mixed
     */
    public function setPath($path)
    {
        $this->path = $path;

        return $this;
    }

    /**
     * Get path
     * @return String
     */
    public function getPath()
    {
        return $this->path;
    }

    /**
     * Set file extension
     * @param $extension
     * @return mixed
     */
    public function setExtension($extension)
    {
        $this->extension = $extension;

        return $this;
    }

    /**
     * Set name
     * @param $name
     * @return mixed
     */
    public function setName($name)
    {
        $this->name = $name;

        return $this;
    }

    /**
     * @return string
     */
    public function getFolder()
    {
        return $this->folder;
    }

    /**
     * Set name
     * @param $systemName
     * @return mixed
     */
    public function setSystemName($systemName)
    {
        $this->system_name = $systemName;

        return $this;
    }
}

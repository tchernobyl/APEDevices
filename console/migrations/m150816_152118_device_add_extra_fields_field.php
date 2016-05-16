<?php

use yii\db\Schema;
use yii\db\Migration;

class m150816_152118_device_add_extra_fields_field extends Migration
{
    public function up()
    {
        $this->addColumn('device_device', 'extra_fields', 'LONGTEXT default null');
    }

    public function down()
    {
        echo "m150816_152118_device_add_extra_fields_field cannot be reverted.\n";

        return false;
    }

    /*
    // Use safeUp/safeDown to run migration code within a transaction
    public function safeUp()
    {
    }
    
    public function safeDown()
    {
    }
    */
}

<?php

session_start();



require_once('config/config.php');

require_once ('libraries/Template.php');
require_once ('libraries/Database.php');
require_once ('libraries/topic.php');
require_once ('libraries/User.php');
require_once('libraries/Search.php');
require_once('libraries/Validator.php');

require_once('helpers/system_helper.php');
require_once('helpers/format_helper.php');
require_once('helpers/db_helper.php');


function __autoloaad($class_name){
	require_once('libraries/'.$class_name .'.php');
}



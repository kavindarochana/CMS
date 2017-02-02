<?php require ('core/init.php'); ?>


<?php

	$topic = new Topic;

		//Create User object	
		$user = new User;


	/*get category */

	$category = isset($_GET['category']) ? $_GET['category'] : null;

	/*get category-user*/

	$user_id = isset($_GET['user']) ? $_GET['user'] : null;





	$template = new Template ('template/topics.php');

	if (isset($category)){
		$template->topics = $topic->getByCategory($category);
		$template->title = 'Post In "'.$topic->getCategory($category)->name.'"';
	}

	if (isset($user_id)){
		$template->topics = $topic->getByUser($user_id);
		//$template->title = 'Posts By"'.$user->getUser($user_id)->username.'"';
	}


	if (!isset($category) && !isset($user_id)){
		$template->topics = $topic->getAllTopics();

	}


	
	$template->totalTopics = $topic->getTotalTopics();
	$template->totalCategories = $topic->getTotalCategories();
	$template->totalUsers = $user->getTotalUsers();








echo $template;    

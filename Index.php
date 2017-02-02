<?php require ('core/init.php'); ?>


<?php 
	
	
 
	
	//Create Topic object
		$topic = new Topic;

	//Create User object	
		$user = new User;

		$template = new Template('template/frontpage.php');


		$template->topics = $topic->getAllTopics();
		$template->totalTopics = $topic->getTotalTopics();
		$template->totalCategories = $topic->getTotalCategories();
		$template->totalUsers = $user->getTotalUsers();






echo $template;    
?>




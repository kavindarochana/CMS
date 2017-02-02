<?php require ('core/init.php'); ?>


<?php 

	$topic = new Topic;

	$topic_id = $_POST['searchterm'];
	
	$template = new Template ('template/search.php');


	$template->topic = $topic->getTopic($topic_id);
	$template->replies = $topic->getReplies($topic_id);



		


echo $template;    

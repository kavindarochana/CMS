<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="images/ks.ico">

    <title>KIRP Tutorials</title>

   
    <link href="<?php BASE_URI; ?>template/css/bootstrap.css" rel="stylesheet">  
    <link href="<?php BASE_URI; ?>template/css/custom.css" rel="stylesheet">
    <script src="<?php BASE_URI; ?>template/js/ckeditor/ckeditor.js"></script>
    <script src="<?php BASE_URI; ?>template/js/jquery.min.js"></script>
    <script src="<?php BASE_URI; ?>template/js/bootstrap.js"></script>
   <?php 
    if(!isset($title)){
    $title = SITE_TITLE;
   }
   ?>

  </head>

  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="Index.php">KIRP Tutorials</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="Index.php">Home</a></li>
            <?php if(!isLoggedIn()) :?>
              <li><a href="register.php">Creat An Account</a></li>
            <?php else : ?>
              <li><a href="create.php">Create Topic</a></li>
            <?php endif; ?>
          </ul>
        </div>
      </div>
    </nav>

    <div class="container">

      <div class="row">
        <div class="col-md-8">
          <div class="main-col">
            
            <div class="block">


              <h1 class="pull-left"><?php echo $title;?></h1>
              <h4 class="pull-right">KIRP Tutorials forum</h4>
              <div class="clearfix"></div>

              <hr>

              <?php displayMessage(); ?>



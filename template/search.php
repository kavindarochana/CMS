
<?php include('includes\header.php'); ?>

<?php
    

   
    if(isset($_POST['submit'])) {
            $searcher   =   new SearchEngine();
            $searcher->execute($_POST['searchterm']);
            $searcher->display();
        } ?>
   
 
    




 <?php include('includes\footer.php'); ?>
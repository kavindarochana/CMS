<?php

class DBEngine
        {
            protected   $con;
            // Create a default database element
            public  function __construct($host = '',$db = '',$user = '',$pass = '')
                {
                    try {
                            $this->con  =   new PDO("mysql:host=$host;dbname=$db",$user,$pass, array(PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING));
                        }
                    catch (Exception $e) {
                          return 0;
                        }
                }

            // Simple fetch and return method
            public  function Fetch($_sql)
                {
                    $query  =   $this->con->prepare($_sql);
                    $query->execute();

                    if($query->rowCount() > 0) {
                            $rows   =   $query->fetchAll();
                        }

                    return (isset($rows) && $rows !== 0 && !empty($rows))? $rows: 0;
                }

            // Simple write to db method
            public  function Write($_sql)
                {
                    $query  =   $this->con->prepare($_sql);
                    $query->execute();
                }
        }




         class   SearchEngine
        {
            protected   $searchterm;
            public  function execute($searchword)
                {
                    $this->searchterm   =   htmlentities(trim($searchword), ENT_QUOTES);
                }

            public  function display()
                { ?>
                    <h1>Results</h1>
                <?php 

                    //If they forget to enter a search term display an error 
                    if(empty($this->searchterm)) { ?>
                    <h3>Search Empty</h3>
                    <p>You must fill out search field.</p>
                    <?php }
                    else {
                            $con        =    new DBEngine('localhost','wardbk','root','');
                            $results    =   $con->Fetch( "SELECT * FROM topics WHERE title LIKE '%".$this->searchterm."%' OR body LIKE '%".$this->searchterm."%'");

                            $query = ("SELECT topics.*, users.username, users.avatar, categories.name FROM topics
                                INNER JOIN users
                                ON topics.user_id= users.id
                                INNER JOIN categories
                                ON topics.category_id = categories.id
                                ORDER BY create_date DESC
                                ");

                            if($results !== 0 && !empty($results)) { ?>
                                    <p>Number of match found: <b><?php echo count($results); ?> </b>on search:<br />
                                    <b><?php echo strip_tags(html_entity_decode($this->searchterm)); ?></b></p>

                                    

                                    <?php




                                    foreach($results as $rows) {

                                        $id = ($rows['id']);

                                        //Limit body TexT
                                        $string = ($rows['body']);
                                        $stringCut = substr($string, 0, 90);
                                        $string = substr($stringCut, 0, strrpos($stringCut, ' ')); 


                                        echo "<a href='http://localhost/kirp/topic.php?id=$id'>";
                                        echo '<pre>';
                                        echo '<h4><b>';
                                        print_r($rows['title']);
                                        echo print_r($rows['user_id']);
                                        echo '</a>';
                                        echo '</h4></b>';
                                         
                                     
                                        
                                                            
                                        echo $string;



                                        echo '<br>';
                                        echo '</pre>';
                                        echo "</a>";

                                        }
                                }
                            else { ?>
                                    <h3>No results found.</h3>
                                    <?php
                                }
                        }
                }
        }

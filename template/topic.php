<?php include('includes\header.php'); ?>

              
                <div class="row">     

                <!-- *********** Video Player ***********-->
                      <video id="video" class="pull" controls>
                        <source src="war_video/<?php echo $topic->video; ?>" type="video/mp4"></source>
                      </video>

                        <!----    Auto pausing function & title change   ---->

                      <script>

                            var video = document.getElementById('video');  //Get document current title
                            var documentTitle = document.title;
                            var updateTitleForVideo = function(state){
                              if (state === '') {                        //Get video current state
                                document.title = documentTitle;
                                return;
                              }
                              document.title = documentTitle + ' [' + state + ']';
                            };
                            video.onpause = function() {
                              updateTitleForVideo('Paused');   //pause function and pass document title
                            };
                            video.onplay = function(){
                              updateTitleForVideo('');            
                            };
                            document.addEventListener('visibilitychange', function() {
                              var state = document.visibilityState;         //Check video visibility / user switch the tab

                              if (!video.paused) {
                                if (state === 'hidden') {
                                  video.pause();
                                  updateTitleForVideo('Paused');
                                }
                              }
                            });
                          </script>
                    </div>






<ul id="topics">

              	<li id="main-topic" class="topic topic">
              		<div class="row">
              			<div class="col-md-2">
              				<div class="user-info">
              					<img src="<?php echo  BASE_URI; ?>images/avatars/<?php echo $topic->avatar; ?>" class="avatar pull-left" height="80" width="80">
              					<ul>
              						<li><strong><?php echo $topic->username; ?></strong></li>
              						<li><?php echo userPostCount($topic->user_id); ?> Posts</li>
              						<li><a href="<?php echo BASE_URI; ?>topics.php?user=<?php echo $topic->user_id; ?>">View topics</a>
              					</ul>
              				</div>
              			</div>

              			<div class="col-md-10">
              				<div class="topic-content pull right">
              					<?php echo $topic->body; ?>
              				</div>
              			</div>
              		</div>
             </li>
             
             <?php foreach($replies as $reply) : ?>
              <li class="topic topic">
             	<div class="row">
             		<div class="col-md-2">
             			<div class="user-info">
             				<img class="avatar pull-left" src="<?php echo  BASE_URI; ?>images/avatars/<?php echo $reply->avatar; ?>" height="80" width="80">
             				<ul>
             					<li><strong><?php echo $reply->username; ?></strong></li>
             					<li><?php echo userPostCount($reply->user_id); ?> Posts</li>
             					<li><a href="<?php echo BASE_URI; ?>topics.php?user=<?php echo $reply->user_id; ?>">View Topics</a>
             				</ul>

             			  </div>
             			 </div>
             			 <div class="col-md-10">
             			 	<div class="topic-content pull-right">
             			 		<?php echo $reply->body; ?>
             			</div>
             		</div>
             	</div>

             </li>

           <?php endforeach; ?>


		</ul>
		<h3>Reply to Topic</h3>
    <?php if (isLoggedin()) : ?>
              <form role="form" method="post" action="topic.php?id=<?php echo $topic->id; ?>">
		            <div class="form-group">
                  <label>Topic Body</label>
                  <textarea id="body" rows="10" cols="80" class="form-control" name="body"></textarea>
                  <script>CKEDITOR.replace('body');</script>
                </div>
                <button name="do_reply" type="submit" class="btn btn-default">Submit</button>
              </form>
            <?php else : ?>

              <p><h5><b>Please login to reply</b></h5></p>

            <?php endif; ?>
              

 <?php include('includes\footer.php'); ?>
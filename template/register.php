<?php include('includes\header.php'); ?>


	<form role="form" enctype="multipart/form-data" method="post" action="">
		<div class="form-group">
			<label>Name*</label> <input type="text" class="form-control" name="name" placeholder="Enter Your Name">

		</div>

		<div class="form-group">
			<label>Email Address*</label> <input type="text" class="form-control" name="email" placeholder="Enter Your Email Address">

		</div>

		<div class="form-group">
			<label>Choose username*</label> <input type="text" class="form-control" name="username" placeholder="Enter Your Username">

		</div>

		<div class="form-group">
			<label>Password*</label> <input type="password" class="form-control" name="password" placeholder="Enter A Password">

		</div>

		<div class="form-group">
			<label>Confirm Password*</label> <input type="password" class="form-control" name="password2" placeholder="Enter Password Again">

		</div>



		<div class="form-group">
			<label>Upload Avatar</label> <input type="file" class="form-control" name="avatar">
			<p class="help-block"></p>

		</div>
		

		<div class="form-group">
			<label>About Me</label> <textarea id="about" rows="6" cols="80" class="form-control" name="about" placeholder="Tell us about yourself (Optional)"></textarea>

		</div>

		<div class="form-group">
			<input type="submit" class="btn btn-default" name="register" value="Register">

		</div>

	</form>


<?php include('includes\footer.php'); ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" >

<head>
<style>
	
	*, *:before, *:after {
  -webkit-box-sizing: border-box;
          box-sizing: border-box;
}




a {
  text-decoration: none;
  color: #1ab188;
  -webkit-transition: .5s ease;
  transition: .5s ease;
}
a:hover {
  color: #179b77;
}

.form {
    background: rgba(60, 61, 65, 1.0);    /*form ke transparency or color is set here*/
  padding: 40px;
  max-width: 600px;
  margin: 40px auto;
  border-radius: 4px;
  -webkit-box-shadow: 0 4px 10px 4px rgba(19, 35, 47, 0.3);
          box-shadow: 0 4px 10px 4px rgba(19, 35, 47, 0.3);
}

.tab-group {
  list-style: none;
  padding: 0;
  margin: 0 0 40px 0;
}
.tab-group:after {
  content: "";
  display: table;
  clear: both;
}
.tab-group li a {
  display: block;
  text-decoration: none;
  padding: 15px;
  background: rgba(160, 179, 176, 0.25);
  color: #a0b3b0;
  font-size: 20px;
  float: left;
  width: 50%;
  text-align: center;
  cursor: pointer;
  -webkit-transition: .5s ease;
  transition: .5s ease;
}
.tab-group li a:hover {
  background: #179b77;
  color: #ffffff;
}
.tab-group .active a {
  background: #1ab188;
  color: #ffffff;
}

.tab-content > div:last-child {
  display: none;
}

h1 {
  text-align: center;
  color: #ffffff;
  font-weight: 300;
  margin: 0 0 40px;
}

label {
  position: absolute;
  -webkit-transform: translateY(6px);
          transform: translateY(6px);
  left: 13px;
  color: rgba(255, 255, 255, 0.5);
  -webkit-transition: all 0.25s ease;
  transition: all 0.25s ease;
  -webkit-backface-visibility: hidden;
  pointer-events: none;
  font-size: 22px;
}
label .req {
  margin: 2px;
  color: #1ab188;
}

label.active {
  -webkit-transform: translateY(50px);
          transform: translateY(50px);
  left: 2px;
  font-size: 14px;
}
label.active .req {
  opacity: 0;
}

label.highlight {
  color: #ffffff;
}

input, textarea {
  font-size: 22px;
  border: none;
  display: block;
  width: 100%;
  height: 100%;
  padding: 5px 10px;
  background: none;
  background-image: none;
  /*border-bottom: : 1px solid #a0b3b0;*/
  color: #ffffff;
  border-radius: 0;
  -webkit-transition: border-color .25s ease, -webkit-box-shadow .25s ease;
  transition: border-color .25s ease, -webkit-box-shadow .25s ease;
  transition: border-color .25s ease, box-shadow .25s ease;
  transition: border-color .25s ease, box-shadow .25s ease, -webkit-box-shadow .25s ease;
}
input:focus, textarea:focus , {
  outline: 0;
  border-color: #1ab188;
}

textarea {
  border: 2px solid #a0b3b0;
  resize: vertical;
}

.field-wrap {
  position: relative;
  margin-bottom: 40px;
  border-bottom: 1px solid #aaa;
}

.field-wrap:hover {
  position: relative;
  margin-bottom: 40px;
  border-bottom: 1px solid #1ab188;
}


.top-row:after {
  content: "";
  display: table;
  clear: both;
}
.top-row > div {
  float: left;
  width: 48%;
  margin-right: 4%;
}
.top-row > div:last-child {
  margin: 0;
}

.button {
  border: 0;
  outline: none;
  border-radius: 20px;
  padding: 15px 0;
  font-size: 20px;
  font-weight: 600;
  text-transform: uppercase;
  letter-spacing: .1em;
  background: #1ab188;
  color: #ffffff;
  -webkit-transition: all 0.5s ease;
  transition: all 0.5s ease;
  -webkit-appearance: none;
}
.button:hover, .button:focus {
  background: #179b77;
}

.button-block {
  display: block;
  width: 100%;
}

.forgot {
  margin-top: -20px;
  text-align: right;
}
</style>
</head>

<!-- MODAL -->
<div class="modal fade" id="pz" role="dialog">
    <div style="margin-top: 100px;" class="modal-dialog">

<!-- form inside modal starts here -->

		<div class="form"> <!-- Main Form to start -->
	    	<ul class="tab-group">
        		<li class="tab active"><a href="#signup">Sign Up</a></li>  <!-- Signup tab in the form -->
        		<li class="tab"><a href="#login">Log In</a></li>   <!-- Login tab in the form -->
        	</ul>
	    	<div class="tab-content">
	        	<div id="signup">   
	        		<h1>Sign Up for Free</h1>
		    		<form action="signup.jsp" method="post">          	<!-- SIGN UP FORM -->
	          			<div class="top-row">
	            			<div class="field-wrap">
	              				<label>First Name<span class="req">*</span></label>			<!-- First Name -->
	              				<input type="text" name="firstname"required autocomplete="off" />
	            			</div>
	            			<div class="field-wrap">
	              				<label>Last Name<span class="req">*</span></label>			<!-- Last Name -->
	              				<input type="text" name="lastname" required autocomplete="off"/>
	            			</div>
	          			</div>
	          			
	          			<div class="field-wrap">
	              				<label>contact number<span class="req">*</span></label>			<!-- Last Name -->
	              				<input type="text" name="contact" required autocomplete="off" pattern="[789][0-9]{9}"/>
	            			</div>

	          			<div class="field-wrap">
	            			<label>Email Address<span class="req">*</span></label>			<!-- Email -->
	            			<input type="email" name="email" required autocomplete="off"/>
	          			</div>

	          			<div class="field-wrap">
							<label>Set A Password<span class="req">*</span></label>			<!-- Password -->
	            			<input type="password" name="password"required autocomplete="off"/>
	          			</div>
	          			<button type="submit" class="button button-block"/>Get Started</button>			<!-- Button for SignUp -->
	          		</form>

	        	</div>

		        <div id="login">   
		        	<h1>Welcome Back!</h1>
					<form action="login.jsp" method="post">         <!-- LOGIN FORM -->
		            	<div class="field-wrap">
		            		<label>Email Address<span class="req">*</span></label>			<!-- Email -->
		            		<input type="email" name="email" required autocomplete="off"/>
		          		</div>
		          
		          		<div class="field-wrap">
		            		<label>Password<span class="req">*</span></label>			<!-- Password -->
		            		<input type="password" name="password"required autocomplete="off"/>			
		          		</div>
		          		<p class="forgot"><a href="#">Forgot Password?</a></p>			<!-- Forgot Password -->
		          		<button class="button button-block"/>Log In</button>         
		          	</form>
		        </div>
	    	</div><!-- tab-content -->      
		</div> <!-- /form -->        
    </div><!-- modal-dialog close -->
</div><!-- modal fade close -->

<!-- MODAL ENDS -->

<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>


<script>
	$('.form').find('input, textarea').on('keyup blur focus', function (e) {
  
  var $this = $(this),
      label = $this.prev('label');

	  if (e.type === 'keyup') {
			if ($this.val() === '') {
          label.removeClass('active highlight');
        } else {
          label.addClass('active highlight');
        }
    } else if (e.type === 'blur') {
    	if( $this.val() === '' ) {
    		label.removeClass('active highlight'); 
			} else {
		    label.removeClass('highlight');   
			}   
    } else if (e.type === 'focus') {
      
      if( $this.val() === '' ) {
    		label.removeClass('highlight'); 
			} 
      else if( $this.val() !== '' ) {
		    label.addClass('highlight');
			}
    }

});

$('.tab a').on('click', function (e) {
  
  e.preventDefault();
  
  $(this).parent().addClass('active');
  $(this).parent().siblings().removeClass('active');
  
  target = $(this).attr('href');

  $('.tab-content > div').not(target).hide();
  
  $(target).fadeIn(600);
  
});
</script>

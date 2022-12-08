<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<link rel="stylesheet" href="./style.css">
</head>
<body>
	<input type="hidden" id="status"
		value="<%= request.getAttribute("status")%>">
	<div class="container">
		<form method="post" action="login" class="form" id="login">
			<h1 class="form__title">Login</h1>
			<div class="form__message form__message--error"></div>
			<div class="form__input-group">
				<input type="text" class="form__input" name="email" autofocus
					placeholder="Username or email" required="required">
				<div class="form__input-error-message"></div>
			</div>
			<div class="form__input-group">
				<input type="password" class="form__input" name="password" autofocus
					placeholder="Password" required="required">
				<div class="form__input-error-message"></div>
			</div>
			<button class="form__button" type="submit">Login</button>
			<p class="form__text">
				<a href="forgotPassword.jsp" class="form__link">Forgot your
					password?</a>
			</p>
			<p class="form__text">
				<a class="form__link" href="./Registration.jsp"
					id="linkCreateAccount">Don't have an account? Signup</a>
			</p>
		</form>

		<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
		<link rel="stylesheet" href="alert/dist/sweetalert.css">

		<script type="text/javascript">
			var status = document.getElementById("status").value;
			if(status=="failed"){
				swal("Sorry","Wrong Username or Password","error");
			}
			if(status=="invalidEmail"){
				swal("Sorry","Please Enter Username","error");
			}
			if(status=="invalidUserpassword"){
				swal("Sorry","Please Enter password","error");
			}
			if(status=="resetSuccess"){
				swal("Congrats","Password Change successfully","success");
			}
			if(status=="resetFailed"){
				swal("Sorry","Password change failed","error");
			}
		</script>
</body>
</html>
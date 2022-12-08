<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration</title>
    <link rel="stylesheet" href="./style.css">
</head>
<body>

<input type="hidden" id="status" value="<%= request.getAttribute("status")%>">

    <div class="container">
        <form method="post" action="register" class="form form--hidden" id="createAccount">
            <h1 class="form__title">Registration</h1>
            <div class="form__message form__message--error"></div>
            <div class="form__input-group">
                <input type="text" id="signupUsername" class="form__input"   name="name" autofocus placeholder="Username" required="required">
                <div class="form__input-error-message"></div>
            </div>
            <div class="form__input-group">
                <input type="text" class="form__input" autofocus name="email" placeholder="Email Address" required="required">
                <div class="form__input-error-message"></div>
            </div>
            <div class="form__input-group">
                <input type="password" class="form__input" autofocus name="password" placeholder="Password" required="required">
                <div class="form__input-error-message"></div>
            </div>
            <div class="form__input-group">
                <input type="password" class="form__input" autofocus name="confirmpwd" placeholder="Confirm password" required="required">
                <div class="form__input-error-message"></div>
            </div>
            <div class="form__input-group">
                <input type="text" class="form__input" autofocus name="phonenumber" placeholder="Phonenumber" required="required">
                <div class="form__input-error-message"></div>
            </div>
            <button class="form__button" type="submit">Signup</button>
            <p class="form__text">
                <a class="form__link" href="./Login.jsp" id="linkLogin">Already have an account? login</a>
            </p>
        </form>
        </div>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
		<link rel="stylesheet" href="alert/dist/sweetalert.css">
		
		<script type="text/javascript">
			var status = document.getElementById("status").value;
			if(status=="success"){
				swal("Congrats","Account Created Successfully","success");
			}
			if(status=="invalidName"){
				swal("Sorry","You Enter invalid name","error");
			}
			if(status=="invalidEmail"){
				swal("Sorry","You Enter invalid email","error");
			}
			if(status=="invalidPassword"){
				swal("Sorry","You Enter invalid Password","error");
			}
			if(status=="invalildConfirmpwd"){
				swal("Sorry","You Enter invalid Password","error");
			}
			if(status=="invalidPhonenumber"){
				swal("Sorry","You Enter invalid Phonenumber","error");
			}
			if(status=="invalidPhonenumber"){
				swal("Sorry","Phone number should be 10Digit","error");
			} 
		</script>
		
        
</body>
</html>
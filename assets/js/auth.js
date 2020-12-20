var togglePassword = document.getElementById("toggle-password");

if (togglePassword) {
	togglePassword.addEventListener('click', function() {
	  var x = document.getElementById("password");
	  if (x.type === "password") {
	    x.type = "text";
	  } else {
	    x.type = "password";
	  }
	});
}





$("#login_form").validate({
                    submitHandler: function () {
                        $("#msg_of_form").html(' Please wait..');
                        $.ajax({
                            url: BASEURL+'login/authenticate',
                            type: "POST",
                            data: $('form#login_form').serialize(),
                            dataType: "json",
                            success: function (data) {
                                if (data['success'] == true)
                                {
                                    $('#login_form')[0].reset();
                                   	window.location.href = data['redirect_url'];
                                }
                                else
                                {

																			swal({
																					title: data['title'],
																					text: data['message'],
																					type: 'error',
																					padding: '2em'
																				})



                                }


                            }
                        })

                    }


                })

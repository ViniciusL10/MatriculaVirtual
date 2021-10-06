var password = document.getElementById("password")
  , confirm_password = document.getElementById("confirm_password");

function validatePassword(){
  if(password.value !== confirm_password.value) {
    confirm_password.setCustomValidity("Senhas diferentes!");
  } else {
    confirm_password.setCustomValidity('');
  }
}

document.getElementById('confirm_password')
        .addEventListener('focus', validatePassword());

password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;



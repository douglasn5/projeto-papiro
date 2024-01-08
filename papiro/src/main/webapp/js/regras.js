/**
 * 
 */
document.addEventListener('DOMContentLoaded', function() {
    
    var btnEditar = document.getElementById('btn-editar');
    
    
    btnEditar.addEventListener('click', function(event) {
        var nome = document.getElementById('txtnome').value;
        var username = document.getElementById('username').value;
        var password = document.getElementById('password').value;

        if (nome.trim() === '' || username.trim() === '' || password.trim() === '') {
            event.preventDefault();
            alert('Por favor, preencha todos os campos');
        } else if (!validarEmail(username)) {
            event.preventDefault();
            alert('Email inválido');
        } else if (!validarSenha(password)) {
            event.preventDefault();
            alert('Senha inválida - mínimo 6 caracteres');
        }
    });
});




function validarEmail(email) {
    var re = /\S+@\S+\.\S+/;
    return re.test(email);
}

function validarSenha(senha) {
    // Pelo menos 6 caracteres
    if (senha.length < 6) {
        return false;
    }

    // Pelo menos 1 número
    if (!/[0-9]/.test(senha)) {
        return false;
    }

    // Pelo menos 1 caractere maiúsculo
    if (!/[A-Z]/.test(senha)) {
        return false;
    }

    return true;
    
function TestaCPF(strCPF) {
    var Soma;
    var Resto;
    Soma = 0;
  if (strCPF == "00000000000") return false;

  for (i=1; i<=9; i++) Soma = Soma + parseInt(strCPF.substring(i-1, i)) * (11 - i);
  Resto = (Soma * 10) % 11;

    if ((Resto == 10) || (Resto == 11))  Resto = 0;
    if (Resto != parseInt(strCPF.substring(9, 10)) ) return false;

  Soma = 0;
    for (i = 1; i <= 10; i++) Soma = Soma + parseInt(strCPF.substring(i-1, i)) * (12 - i);
    Resto = (Soma * 10) % 11;

    if ((Resto == 10) || (Resto == 11))  Resto = 0;
    if (Resto != parseInt(strCPF.substring(10, 11) ) ) return false;
    return true;
}
var strCPF = "12345678909";
alert(TestaCPF(strCPF));

}

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="java.sql.*"%>
<%@ page import="com.mysql.cj.jdbc.Driver"%>
<%@ page import="papiro.Conexao"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="./styles.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="css/Cadastro.css"
      rel="stylesheet"
    />
    <script type="text/javascript" src="verificarCPF.js"></script>
    <script src="js/regras.js"></script>
    <title>Cadastro</title>
  </head>
  <title>Usuários</title>
</head>
<%
Statement st = null;
ResultSet rs = null;
%>
  <body>
    <div class="container">
      <div class="header">
        <h2>Criar Uma Conta</h2>
      </div>

      <form id="form" class="form">
        <div class="form-control">
          <label  for="username">Nome de usuário</label>
          <input
          name="username"
            type="text"
            id="username"
            placeholder="Digite seu nome de usuário..."
          />
          <i class="fas fa-exclamation-circle"></i>
          <i class="fas fa-check-circle"></i>
          <small>Mensagem de erro</small>
        </div>

        <div class="form-control">
          <label for="email">Email</label>
          <input type="text" id="email" name="email" placeholder="Digite seu email.." />
          <i class="fas fa-exclamation-circle"></i>
          <i class="fas fa-check-circle"></i>
          <small>Mensagem de erro</small>
        </div>
         <div class="form-control">
          <label for="password" onblur="return verificarCPF(this.value)">Cpf</label>
          <input
          name="cpf"
            type="cpf"
            id="cpf"
            placeholder="Digite seu Cpf"
          /></div>
          <div class="form-control">
          <label for="password" onblur="regras.js"(this.value)" value="">Cep</label>
          <input
            type="text"
            id="cep"
           name="cep"
            placeholder="Digite seu Cep"
          /></div>
             <div class="form-control">
          <label  >logradouro</label>
          <input
          name="logradouro"
            type="text"
            id="logradouro"
           /></div>
               <div class="form-control">
          <label >bairro</label>
          <input
          name="bairro" 
            type="text"
            id="bairro"
           /></div>
                 <div class="form-control">
          <label  >complemento</label>
          <input
          name="complemento"
            type="text"
            id="complemento"
           /></div>
                <div class="form-control">
          <label  >numero</label>
          <input
          name="numero"
            type="text"
            id="numero"
           /></div>
               <div class="form-control">
          <label >cidade</label>
          <input
          name="cidade" 
            type="text"
            id="cidade"
           /></div>
            <div class="form-control">
          <label for="password">Senha</label>
          <input
            type="password"
            id="password"
            name="password"
            placeholder="Digite sua senha..."
          />
          <i class="fas fa-exclamation-circle"></i>
          <i class="fas fa-check-circle"></i>
          <small>Mensagem de erro</small>
        </div>
         <div class="form-control">
          <label for="passwordconfirmation">Confirmação de senha</label>
          <input
            type="password"
            id="passwordconfirmation"
            name="passwordconfirmation"
            placeholder="Digite sua senha novamente..."
          />
          <i class="fas fa-exclamation-circle"></i>
          <i class="fas fa-check-circle"></i>
          <small>Mensagem de erro</small>
        </div>
        

        <button name="btn-salvar" id="btn-salvar">Enviar</button>
      </form>
    </div>

    <script
      src="https://kit.fontawesome.com/f9e19193d6.js"
      crossorigin="anonymous"
    ></script>

    <script src="js/regras.js"></script>
  </body>
</html>
<%
if (request.getParameter("btn-salvar") != null) {
	
	String user = request.getParameter("username");
	String email = request.getParameter("email");
	String cpf = request.getParameter("cpf");
	String cep = request.getParameter("cep");
	String logradouro = request.getParameter("logradoudro");
	String complemento = request.getParameter("complemento");
	String bairro = request.getParameter("bairro");
	String numero = request.getParameter("numero");
	String cidade = request.getParameter("cidade");
	String pass = request.getParameter("password");
	
	
	
	try{
		st = new Conexao().conectar().createStatement();
		//---
		rs = st.executeQuery("SELECT * FROM usuarios where usuario = '"+ user +"'");
		while(rs.next()){
			if(rs.getRow()>0){
				out.print("<script>alert('email já cadastrado!');</script>");
				return; // sai da estrutura
			}
		}
		//---
		st.executeUpdate("INSERT INTO usuarios (usuario, senha, email,cpf, logradouro, numero,complemento,bairro, cidade,cep) VALUES ('"+user+"','"+pass+"','"+email+"','"+cpf+"', '"+logradouro+"', '"+numero+"','"+complemento+"','"+bairro+"','"+cidade+"','"+cep+"')");
		response.sendRedirect("login.jsp");
		
	}catch (Exception e){
		out.print(e);
	}
}


%>
    
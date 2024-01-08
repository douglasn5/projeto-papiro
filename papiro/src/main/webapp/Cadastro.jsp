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
    <title>(EM PROGRESSO) Formulário</title>
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
          <label for="username">Nome de usuário</label>
          <input
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
          <input type="text" id="email" placeholder="Digite seu email.." />
          <i class="fas fa-exclamation-circle"></i>
          <i class="fas fa-check-circle"></i>
          <small>Mensagem de erro</small>
        </div>
         <div class="form-control">
          <label for="password">Cpf</label>
          <input
            type="Cpf"
            id="Cpf"
            placeholder="Digite seu Cpf"
          /></div>
          <div class="form-control">
          <label for="password">Cep</label>
          <input
            type="Cep"
            id="Cep"
            placeholder="Digite seu Cep"
          /></div>
             <div class="form-control">
          <label for="password">cidade</label>
          <input
            type="city"
            id="city"
           /></div>
            <div class="form-control">
          <label for="password">Bairro</label>
          <input
            type="Address"
            id="Address"
           /></div>
            <div class="form-control">
          <label for="password">Complemento</label>
          <input
            type="Address"
            id="Address"
           /></div>
            <div class="form-control">
          <label for="password">telefone</label>
          <input
            type="telephone"
            id="telephone"
            placeholder="Digite seu telefone"
          /></div>

        <div class="form-control">
          <label for="password">Senha</label>
          <input
            type="password"
            id="password"
            placeholder="Digite sua senha..."
          />
          <i class="fas fa-exclamation-circle"></i>
          <i class="fas fa-check-circle"></i>
          <small>Mensagem de erro</small>
        </div>
         <div class="form-control">
          <label for="password-confirmation">Confirmação de senha</label>
          <input
            type="password"
            id="password-confirmation"
            placeholder="Digite sua senha novamente..."
          />
          <i class="fas fa-exclamation-circle"></i>
          <i class="fas fa-check-circle"></i>
          <small>Mensagem de erro</small>
        </div>
        

        <button type="submit">Enviar</button>
      </form>
    </div>

    <script
      src="https://kit.fontawesome.com/f9e19193d6.js"
      crossorigin="anonymous"
    ></script>

    <script src="./scripts.js"></script>
  </body>
</html>
<%
if (request.getParameter("btn-salvar") != null) {
	String nome = request.getParameter("txtnome");
	String user = request.getParameter("username");
	String pass = request.getParameter("password");
	String nivel = "u";
	
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
		st.executeUpdate("INSERT INTO usuarios (nome, usuario, senha, nivel) VALUES ('"+nome+"','"+user+"','"+pass+"','"+nivel+"')");
		response.sendRedirect("index.jsp");
		
	}catch (Exception e){
		out.print(e);
	}
}


%>
    
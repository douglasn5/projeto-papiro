<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

<%@ page import="java.sql.*"%>
<%@ page import="com.mysql.cj.jdbc.Driver"%>
<%@ page import="papiro.Conexao"%>
    
<!DOCTYPE html>
<html>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<head>
	<title> Login Page</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" defer></script>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
	crossorigin="anonymous" defer></script>
	<link href="css/style.css" rel="stylesheet">

</head>
<%
//Connection con = null;
Statement st = null;
ResultSet rs = null;

%>

<body>
	<div class="container h-100">
		<div class="d-flex justify-content-center h-100">
			<div class="user_card">
				<div class="d-flex justify-content-center">
					<div class="brand_logo_container">
						<img src="assets/papirologo.jpeg" class="brand_logo" alt="Logo">
					</div>
				</div>
				<div class="d-flex justify-content-center form_container">
					<form>
						<div class="input-group mb-3">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-user"></i></span>
							</div>
							<input type="text" name="" class="form-control input_user" value="" placeholder="username">
						</div>
						<div class="input-group mb-2">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-key"></i></span>
							</div>
							<input type="password" name="" class="form-control input_pass" value="" placeholder="password">
						</div>
						<div class="form-group">
							<div class="custom-control custom-checkbox">
								<input type="checkbox" class="custom-control-input" id="customControlInline">
								<label class="custom-control-label" for="customControlInline" style="color:white;">Remember me</label>
							</div>
						</div>
							<div class="d-flex justify-content-center mt-3 login_container">
				 	<button type="button" name="button" class="btn login_btn">Login</button>
				   </div>
					</form>
				</div>
		
				<div class="mt-4">
					<div class="d-flex justify-content-center links" style="color:white;">
						você não tem uma conta? <a href="Cadastro.jsp" class="ml-2" style="color:white;">criar uma conta nova</a>
					</div>
					
					</div>
				</div>
			</div>
		</div>
	

</body>
</html>

				<%
				if (request.getParameter("submit") != null) {
					String user = request.getParameter("username");
					String pass = request.getParameter("password");
					// variaveis para receber os dados do banco
					String userBanco = "", passBanco = "";
					// variável para definir sessão
					String nomeUsuario = "";
					String nivelUsuario = "";
					String idUsuario = "";
					try {
						//st = con.createStatement();
						st = new Conexao().conectar().createStatement();
						rs = st.executeQuery("SELECT * FROM usuarios where usuario = '" + user + "' and senha = '" + pass + "' ");
						while (rs.next()) {
					// passando o registro para as variáveis
					userBanco = rs.getString(3);
					passBanco = rs.getString(4);
					// definindo o valor para a sessão
					nomeUsuario = rs.getString(2);
					nivelUsuario = rs.getString(5);
					idUsuario = rs.getString(1);
						}
					} catch (Exception e) {
						out.print(e);
					}
					if (user == null || user.isEmpty()) {
						out.println("Preencha o usuário");
					} else if (pass == null || pass.isEmpty()) {
						out.println("Preencha a senha");
					} else if (user.equals(userBanco) && pass.equals(passBanco)) {
						//Criando a sessão
						session.setAttribute("nomeUsuario", nomeUsuario);
						session.setAttribute("nivelUsuario", nivelUsuario);
						session.setAttribute("idUsuario", idUsuario);
						//Em Java, para comparar strings, você deve usar o método equals()
						if (nivelUsuario.equals("a")) {
					response.sendRedirect("usuario/usuarios.jsp");
						} else {
					response.sendRedirect("Home.jsp");
						}
					} else {
						out.println("Dados incorretos");
					}
				}
				%>
			
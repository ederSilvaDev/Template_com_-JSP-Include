<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">

<title>Bem Vindo ao Curso Java - JSP</title>

<style type="text/css">
form {
	position: absolute;
	top: 40%;
	left: 33%;
	right: 33%;
}

h3 {
	position: absolute;
	top: 30%;
	left: 33%;
}

.msg {
	position: absolute;
	top: 70%;
	left: 33%;
	font-size: 15px;
	color: red;
}
</style>

</head>
<body>
	<h3>Bem vindo mundo Java !!!</h3>

	<form action="ServletLogin" method="post"
		onsubmit="return validardados()? true : false">

		<input type="hidden" value="<%=request.getParameter("url")%>"
			name="url">

		<div class="col-md-6">
			<label class="form-label" for="login">Login</label> <input
				class="form-control" id="login" name="login" type="text" required>
			<div class="invalid-feedback">Obrigatório</div>
			<div class="valid-feedback">ok</div>
		</div>

		<div class="col-md-6">
			<label class="form-label" for="senha">Senha</label> <input
				class="form-control" id="senha" name="senha" type="password"
				required>
			<div class="invalid-feedback">Obrigatório</div>
			<div class="valid-feedback">ok</div>
		</div>
		<div class="row">
			<div><input type="submit" value="Acessar" class="col-20 col-sm-6"></div>
			<!-- Option 1: Bootstrap Bundle with Popper -->
		</div>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
			crossorigin="anonymous"></script>

	</form>
	<script type="text/javascript">
		function validardados() {
			var login = document.getElementById("login").value;
			var senha = document.getElementById("senha").value;

			if (login == '') {
				alert("O Login deve ser informado !");
				return false;
			} else if (senha == '') {
				alert("A Senha deve ser informado !");
				return false;
			} else if ((login != 'admin') && (senha != 'admin')) {
				alert("Login ou Senha inválido(s)");
				return false;
			}
			return true;
		}
	</script>
</body>
</html>
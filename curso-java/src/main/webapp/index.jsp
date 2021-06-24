<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bem Vindo ao Curso Java - JSP</title>
</head>
<body>
	<h1>Bem vindo mundo Java !!!</h1>

	<form action="ServletLogin" method="post"
		onsubmit="return validardados()? true : false">

		<table>
			<tr>
				<td><label>Login :</label></td>
				<td><input name="login" id="login" type="text"></td>
			</tr>

			<tr>
				<td><label>Senha :</label></td>
				<td><input name="senha" id="senha" type="password"></td>
			</tr>

			<tr>
				<td><input type="submit" value="Acessar"
					onclick="validardados()"></td>
			</tr>
		</table>

	</form>
	<script type="text/javascript">
		function validardados() {
			var login = document.getElementById("login").value;
			var senha = document.getElementById("senha").value;

			if (login == '') {
				alert("O Login deve ser informado !");
				return;
			} else if (senha == '') {
				alert("A Senha deve ser informado !");
				return;
			}else if (login != '') && (login="admin") and (senha != '') && (senha="admin"){
				alert("Login ou Senha inválido(s)");
				return;
			}
			return true;
		}
	</script>
</body>
</html>
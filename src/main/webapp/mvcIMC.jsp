<%@page import="mvc.CalculoIMCModel"%>
<%@page import="mvc.CalculoIMCController"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Índice de Massa Corporal</title>
<!-- Bootstrap -->

<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"
	rel="stylesheet">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
 src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
 src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
   <![endif]-->
</head>
<body>
	<div class="container" style="margin-top: 30px">
		<div class="col-md-12">
			<div class="modal-dialog" style="margin-bottom: 0">
				<div class="modal-content">
					<div class="panel-heading">
						<h3 class="panel-title" align="center">Calculadora de IMC</h3>
					</div>
					<div class="panel-body">
						<fieldset>
							<form>
								<div class="form-group">
									<input class="form-control" placeholder="Altura" name="altura"
										type="text" value="${param.altura}">
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="Peso" name="peso"
										type="text" value="${param.peso}">
								</div>
								<div>
									<input class="btn btn-sm btn-success" type="submit">
								</div>
								<br>
							</form>
						</fieldset>

						<%
							CalculoIMCModel calcImc = (CalculoIMCModel) request
									.getAttribute("imc");

							if (calcImc.getPeso() == 0 && calcImc.getAltura() == 0) {
						%>
						<div class='alert alert-info'>
							<strong> Por favor, insira os valores nos campos acima!</strong>
						</div>
						<%
							} else if (calcImc.getResultado().equals("Magro")) {
						%>
						<div class='alert alert-warning'>
							${param.imc}<br> <strong> Aff, corre para o Mc Donalds!</strong> Mosss que magreza
							é essa?
						</div>
						<%
							} else if (calcImc.getResultado().equals("Normal")) {
						%>
						<div class='alert alert-success'>
							${param.imc}<strong> Tá delícia!</strong> Shape adequado
						</div>
						<%
							} else if (calcImc.getResultado().equals("Acima do peso")) {
						%>
						<div class='alert alert-danger'>
							${param.imc}<strong> Tá fininho hein?! balão!</strong> Bora pra esteira
						</div>
						<%
							}
						%>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
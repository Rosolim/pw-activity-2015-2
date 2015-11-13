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
										type="text">
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="Peso" name="peso"
										type="text">
								</div>
								<input class="btn btn-sm btn-success" type="submit"> <a
									href="indMasCorp.jsp">Zerar</a>
							</form>
						</fieldset>

						<%
							String peso = request.getParameter("peso");
							peso = peso == null ? "" : peso;
							String altura = request.getParameter("altura");
							altura = altura == null ? "" : altura;
							Double calPeso = 0.0;
							Double calAltura = 0.0;
							if (altura != "" || peso != "") {
								calPeso = Double.parseDouble(peso);
								calAltura = Double.parseDouble(altura);
							}
							Double result = 0.0;
							if (calAltura == 0.0 || calPeso == 0.0) {
								out.print("<br> <h3>Insira as informações</h3>");
							} else
								result = calPeso / (calAltura * calAltura);
							String text = "";
							if (result < 18.5 && result > 0.0) {
								text = "<br> <div class='alert alert-warning'>" + result + "<br><strong> Aff, corre para o Mc Donalds!</strong> Mosss que magreza é essa?</div>";
								out.print(text);
							} else if (result >= 18.5 && result <= 25) {
								text = "<br> <div class='alert alert-success'>" + result + "<br><strong> Tá delícia!</strong> Shape adequado</div>";
								out.print(text);
							} else if (result > 25 && result != 0.0) {
								text = "<br> <div class='alert alert-danger'>" + result + "<br><strong> Tá fininho hein?! balão!</strong> Bora pra esteira</div>";
								out.print(text);
							}
						%>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
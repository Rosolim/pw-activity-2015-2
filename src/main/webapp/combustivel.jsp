<%@page import="mvc.CalculoCombustivelModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Calculo de combustível</title>
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
						<h3 class="panel-title" align="center"><strong>O QUE ABASTECER?</strong></h3>
					</div>
					<div class="panel-body">
						<fieldset>
							<form>
								<div class="form-group">
									<input class="form-control" placeholder="Preço do Álcool"
										name="alcool" type="text" value="${param.alcool}">
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="Preço do Gasolina"
										name="gasolina" type="text" value="${param.gasolina}">
								</div>
								<div>
									<input class="btn btn-sm btn-success" type="submit">
								</div>
								<br>
							</form>
						</fieldset>
						<%
							CalculoCombustivelModel comb = (CalculoCombustivelModel) request
									.getAttribute("comb");
							if (comb.getResultado().equals("alcool")) {
						%>
						<div class='alert alert-info'>
							${param.resultado}Você deve abastecer com <strong> Álcool </strong>
						</div>

						<%
							} else {
						%>
						<div class='alert alert-danger'>
							${param.resultado}Você deve abastecer com <strong> Gasolina </strong>
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

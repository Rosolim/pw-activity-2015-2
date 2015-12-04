<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sorteio</title>
</head>
<body>
	<form action="sorteio" method="Post">
		<div>Sorteio de 1 a 10</div>
		<div>Nr sorteado: ${showNr.mostraNumero}</div>
		<div>Qtd Nr sorteados: ${showNr.contador}</div>
		<br> <input type="submit" value="Sortear">
	</form>
	<form action="reiniciar" method="Post">
		<input type="submit" value="Reiniciar">
	</form>
</body>
</html>
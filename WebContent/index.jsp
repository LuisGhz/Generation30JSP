<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<jsp:useBean id="miMensajitu" class="com.exercise30jsp.model.Message"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Index</title>
	<link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <!--<link rel="stylesheet" href="css/style.css">-->
</head>
<body>
	<h2>JSPs with JSTL</h2>
	<c:out value="Hola Mundo!"></c:out>
	
	<c:set var="funda" scope="application" value="100"></c:set>
	
	<c:out value="${funda}"></c:out>
	
	<c:forEach var="i" begin="1" end="10">
		<c:out value="${i}"></c:out>
	</c:forEach>
	
	<form>
		<label for="txtNumbers">Number</label>
		<input class="form-control" type="text" id="txtNumber" name="txtNumber" >
		<input class="btn btn-success" type="submit" value="Square the number" >
		<c:set var="square" value="${param.txtNumber * param.txtNumber}"></c:set>
		<c:out value="${square}"></c:out>
		<c:if test="${square}<100">
			<c:out value="Valor chiquitu!"></c:out>
		</c:if>
	</form>
	
	<hr>
	
	<h2>Practice 5 Function</h2>
	<form>
		<c:set var="miCadena" value="WELCOME TO JSP PROGRAMMING" >
		</c:set>
		<p id="txt">
			<c:out value="${fn:toLowerCase(miCadena)}"></c:out>		
		</p>
		<p>		
			<c:out value="${fn:toUpperCase(miCadena)}"></c:out>
		</p>
	</form>
	
	<hr>
	
	<h2>Exercise 6</h2>
	<form>
		<jsp:setProperty property="text" name="miMensajitu" value="Oblígame prro!"/>
		Mi mensaje es: <c:out value="${miMensajitu.text}" default="Valor_nulo"></c:out>
	</form>
	</body>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <!--<script src="js/script.js"></script>-->
</html>
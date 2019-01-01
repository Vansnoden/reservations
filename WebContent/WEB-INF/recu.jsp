<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>recu de confirmation</title>
<link rel="stylesheet" href="<c:url value="/css/bootstrap.css"/>">
</head>
<body style="background-color: rgb(239,228,176)">
	<table border="2" class="container col-xs-12 col-md-5 col-lg-5" style="margin-top:10em;">
		<th>RECU DE CONFIRMATION</th>
		<tr>
			<td>nom du client :</td>
			<td><c:out value="${reservation.nomCl}"/></td>
		</tr>
		<tr>
			<td>prenom du client :</td>
			<td><c:out value="${reservation.prenomCl}"/></td>
		</tr>
		<tr>
			<td>date d'arrivee du client :</td>
			<td><c:out value="${reservation.datearrivCl}"/></td>
		</tr>
		<tr>
			<td>type de chambre reservee :</td>
			<td><c:out value="${reservation.typeCh}"/></td>
		</tr>
		<tr>
			<td>montant total :</td>
			<td><c:out value="${reservation.prix}"/></td>
		</tr>
		<tr>
			<td>montant versee par le client :</td>
			<td><c:out value="${reservation.montantVer}"/></td>
		</tr>
	</table>
	<a href="#" class="link" style="margin-left: 40%;">>>>>>>Cliquer ici pour le telecharger.....</a>
</body>
</html>
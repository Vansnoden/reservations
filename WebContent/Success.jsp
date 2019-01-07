<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reussite</title>
</head>
<body>
	<p>Nom : ${sessionScope.client.nom}</p>   
   	<p>Prenom : ${sessionScope.client.prenom}</p>
   	<p>Date d' arrivee : ${sessionScope.client.dateArriv}</p>
   	<p>Date de depart : ${sessionScope.client.dateDepart}</p>
   	<p>Nombre de personnes : ${sessionScope.client.nompers}</p>
   	<p>Nombre de jours : ${sessionScope.client.nomjour}</p>
   	<p>Telephone : ${sessionScope.client.telephone}</p>
   	<p>Numero de compte : ${sessionScope.client.numeroCompte}</p>
   	<p>Categorie : ${sessionScope.client.categorie}</p>
   	<p>Montant : ${sessionScope.client.montant}</p>
   	<P><h2> REUSSITE DE LA RESERVATION</h2> </p>
</body>
</html>
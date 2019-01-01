<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>admin</title>
	<link rel="stylesheet" href="<c:url value="/css/bootstrap.css"/>">
	<link rel="stylesheet" href="<c:url value="/css/notreCss.css"/>">
</head>
<body class="fond">
	<header class="header_interface_metier">
		<img src="image/logo-2.png" class="logo">
		<H1 class="entete">ADMINISTRATOR INTERFACE</H1>
	</header>
	<div class="container">
		<section class="container col-xs-4 col-md-4 col-lg-4 left_sect">	
			<nav >
				<ul class="liste">
					<li><a href="accueil_admin" class="link isfocused">accueil</a></li>
					<li><a href="ajout_recep" class="link">gerer receptionnistes</a></li>
					<li><a href="gererBD" class="link">gerer BD</a></li>
				</ul>
			</nav>
		</section>
		<section class="container col-xs-8 col-md-8 col-lg-8 right_sect">
			<h2 class="s_titre"><U>Liste des receptionnistes enregistrés</U></h2><br>
			<table border="3" class="tab">
				<thead>
					<td class="nom_colone">identifiant</td>
					<td class="nom_colone">nom</td>
					<td class="nom_colone">prenom</td>
					<td class="nom_colone">telephone</td>
				</thead>
				<c:out value="${liste}"/>
			</table>
		</section>
	</div>
</body>
</html>
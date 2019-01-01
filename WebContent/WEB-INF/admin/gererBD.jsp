<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>adminBD</title>
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
					<li><a href="accueil_admin" class="link ">accueil</a></li>
					<li><a href="ajout_recep" class="link ">gerer receptionnistes</a></li>
					<li><a href="gererBD" class="link isfocused">gerer BD</a></li>
				</ul>
			</nav>
		</section>
		<section class="container col-xs-8 col-md-8 col-lg-8 right_sect">
			<h2 class="s_titre"><u>Gerer la base de donnees</u></h2><br>
			<ul class="liste">
				<li><button class="btn btn-success">ajout de table</button></li><br>
				<c:out value="${resultat}"/>
				<li><button class="btn btn-success">ajout de champ</button></li><br>
				<c:out value="${resultat}"/>
				<li><button class="btn btn-success">afficher une table</button></li><br>	
				<c:out value="${resultat}"/>
				<li><button class="btn btn-success">stucture actuel BD</button></li><br>
				<c:out value="${resultat}"/>
			</ul>
		</section>
	</div>
</body>
</html>
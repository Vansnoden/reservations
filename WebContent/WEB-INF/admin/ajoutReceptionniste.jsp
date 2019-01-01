<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
	<link rel="stylesheet" href="<c:url value="/css/bootstrap.css"/>">
	<link rel="stylesheet" href="<c:url value="/css/notreCss.css"/>">
<title>admin+recep</title>
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
					<li><a href="ajout_recep" class="link isfocused">gerer receptionnistes</a></li>
					<li><a href="gererBD" class="link">gerer BD</a></li>
				</ul>
			</nav>
		</section>
		<section class="container col-xs-8 col-md-8 col-lg-8 right_sect">
			<h2 class="s_titre"><U>Formulaire d'ajout</U></h2><br>
			<form method="post" action="#" class="formulaire">
				<table>
					<tr>
						<td><label for="nom">Nom :</label></td>
						<td><input type="text" name="nom" class="champAd" id="nom"></td>
					</tr>
					<tr>
						<td><label for="prenom">Prenom :</label></td>
						<td><input type="text" name="prenom" class="champAd" id="prenom"></td>
					</tr>
					<tr>
						<td><label for="tel">Telephone :</label></td>
						<td><input type="number" name="tel" class="champAd" id="tel"></td>
					</tr>
					<tr>
						<td><label for="mail">Adresse mail :</label></td>
						<td><input type="email" name="email" class="champAd" id="mail"></td>
					</tr>
					<tr>
						<td><label for="id">Identifiant :</label></td>
						<td><input type="text" name="id" class="champAd" id="id"></td>
					</tr>
					<tr>
						<td><input type="submit" value="Enregistrer" class="btn btn-success"></td>
						<td><input type="submit" value="Annuler" class="btn btn-warning reset"></td>
					</tr>
				</table>
			</form>
			<c:out value="${confirmation}"/>
		</section>
	</div>
</body>
</html>
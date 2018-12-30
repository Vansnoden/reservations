<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page pageEncoding="UTF-8" %>
<!doctype html>
<html lang="fr">
    <head>
        <!-- Required meta tags -->
        <meta http-equiv="Content-Type" content="text/html;charset=utf8" />
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="icon" href="<c:url value="/image/favicon.png"/>" type="image/png">
        <title>Royal Hotel</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="<c:url value="/css/bootstrap.css"/>">
        <link rel="stylesheet" href="<c:url value="/vendors/linericon/style.css"/>">
        <link rel="stylesheet" href="<c:url value="/css/font-awesome.min.css"/>">
        <link rel="stylesheet" href="<c:url value="/vendors/owl-carousel/owl.carousel.min.css"/>">
        <link rel="stylesheet" href="<c:url value="/vendors/bootstrap-datepicker/bootstrap-datetimepicker.min.css"/>">
        <link rel="stylesheet" href="<c:url value="/vendors/nice-select/css/nice-select.css"/>">
        <link rel="stylesheet" href="<c:url value="/vendors/owl-carousel/owl.carousel.min.css"/>">
        <!-- main css -->
        <link rel="stylesheet" href="<c:url value="/css/style.css"/>">
        <link rel="stylesheet" href="<c:url value="/css/responsive.css"/>">
        <link rel="stylesheet" href="<c:url value="/css/notreCss.css"/>">
    </head>
    <body class="fond">
        <!--================Header Area =================-->
        <header class="header_area">
            <div class="container">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <a class="navbar-brand logo_h" href="index.html"><img src="<c:url value="/image/Logo.png"/>" alt=""></a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </nav>
            </div>
        </header>
        <!--================Header Area =================--> 
       <div class="container col-xs-12 col-md-6 col-lg-6 contenu">
               <div class="col-xs-12 col-md-6 col-lg-6 titre">
                    <h1>Connectez Vous</h1>
               </div><br>
               <div class="col-md-9">
                   <form method="post" action="acceuil" class="container col-md-8 form_connect">
                        <table>
	                        <tr>
	                        	<td colspan="2" class="champ_connect">
	                              	<input type='text' name="login" class="champ_connect" placeholder="Entrez votre login"/> 
	                             </td>
	                        </tr>
	                        <tr>
	                        	<td colspan="2" class="champ_connect">
	                              	<input type='text' name="passwd" class="champ_connect" placeholder="Entrez votre mot de passe"/>
	                        	</td>
	                        </tr>
	                        <tr class="bouton_connect">
	                        	<td>
	                              <button class="btn btn-warning validation_connect validation_connect1" href="accueil_admin">EN TANT QUE ADMINISTRATEUR</button>    
	                           	</td>
	                           	<td>
	                           	  <button class="btn btn-warning validation_connect validation_connect2" href="accueil_recep">EN TANT QUE RECEPTIONNISTE</button>
	                           	</td>
	                        </tr>
                        </table>             
                   </form>
                  
        <!--================Banner Area =================-->
        
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="<c:url value="/js/jquery-3.2.1.min.js"/>"></script>
        <script src="<c:url value="/js/popper.js"/>"></script>
        <script src="<c:url value="/js/bootstrap.min.js"/>"></script>
        <script src="<c:url value="/vendors/owl-carousel/owl.carousel.min.js"/>"></script>
        <script src="<c:url value="/js/jquery.ajaxchimp.min.js"/>"></script>
        <script src="<c:url value="/js/mail-script.js"/>"></script>
        <script src="<c:url value="/vendors/bootstrap-datepicker/bootstrap-datetimepicker.min.js"/>"></script>
        <script src="<c:url value="/vendors/nice-select/js/jquery.nice-select.js"/>"></script>
        <script src="<c:url value="/js/mail-script.js"/>"></script>
        <script src="<c:url value="/js/stellar.js"/>"></script>
        <script src="<c:url value="/vendors/lightbox/simpleLightbox.min.js"/>"></script>
        <script src="<c:url value="/js/custom.js"/>"></script>
    </body>
</html>
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
    <body>
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
        
        <!--================Banner Area =================-->
        <section class="banner_area">
       	 	<div class="marge_haute">
<!--               just for space -->
            </div>
                   <div class="container">
                    <div class="hotel_booking_table align-items-center">
                        <div class="col-md-3">
                            <h2>Connectez<br>Vous</h2>
                        </div>
                        <div class="col-md-9">
                            <form method="post" action="acceuil">
                            	<div class="boking_table">
                                	<div class="row">
                                    	<div class="col-md-4">
                                        	<div class="book_tabel_item">
                                            	<div class="form-group">
                                                	<div class='input-group'>
                                                    	<input type='text' name="login" class="champ_connect" placeholder="Entrez votre login"/>
                                                	</div>
                                            	</div>
                                            	<div class="form-group">
                                                	<div class='input-group'>
                                                    	<input type='text' name="passwd" class="champ_connect" placeholder="Entrez votre mot de passe"/>
                                                	</div>
                                            	</div>
                                        	</div>
                                    	</div>
                                    	
                                    	<div class="col-md-4">
                                        	<div class="book_tabel_item">
                                            	<div class="form-group">
                                        			<div class='input-group date' >
                                        				<button class="btn btn-warning validation_connect" href="accueil_admin">EN TANT QUE ADMINISTRATEUR</button>
                                        			</div>
                                        		</div>
                                            	<!--<a class="book_now_btn button_hover" href="<c:url value="/Vues/formReservClient1.jsp"/>">RESERVEZ MAINTENANT</a>--> 
                                        		<div class="form-group">
                                        			<div class='input-group date' >
                                        				<button class="btn btn-warning validation_connect" href="accueil_recep">EN TANT QUE RECEPTIONNISTE</button>
                                        			</div>
                                        		</div>
                                        	</div>
                                    	</div>
                                	</div>
                            	</div>
                        	</form>
                        </div>
                    </div>
                </div>
        </section>
        <!--================Banner Area =================-->
        <!--================ start footer Area  =================-->  
        <footer class="footer-area section_gap">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3  col-md-6 col-sm-6">
                        <div class="single-footer-widget">
                            <h6 class="footer_title">About Agency</h6>
                            <p>The world has become so fast paced that people don’t want to stand by reading a page of information, they would much rather look at a presentation and understand the message. It has come to a point </p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="single-footer-widget">
                            <h6 class="footer_title">Navigation Links</h6>
                            <div class="row">
                                <div class="col-4">
                                    <ul class="list_style">
                                        <li><a href="#">Home</a></li>
                                        <li><a href="#">Feature</a></li>
                                        <li><a href="#">Services</a></li>
                                        <li><a href="#">Portfolio</a></li>
                                    </ul>
                                </div>
                                <div class="col-4">
                                    <ul class="list_style">
                                        <li><a href="#">Team</a></li>
                                        <li><a href="#">Pricing</a></li>
                                        <li><a href="#">Blog</a></li>
                                        <li><a href="#">Contact</a></li>
                                    </ul>
                                </div>                    
                            </div>              
                        </div>
                    </div>              
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="single-footer-widget">
                            <h6 class="footer_title">Newsletter</h6>
                            <p>For business professionals caught between high OEM price and mediocre print and graphic output, </p>   
                            <div id="mc_embed_signup">
                                <form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get" class="subscribe_form relative">
                                    <div class="input-group d-flex flex-row">
                                        <input name="EMAIL" placeholder="Email Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email Address '" required="" type="email">
                                        <button class="btn sub-btn"><span class="lnr lnr-location"></span></button>   
                                    </div>                  
                                    <div class="mt-10 info"></div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="single-footer-widget instafeed">
                            <h6 class="footer_title">InstaFeed</h6>
                            <ul class="list_style instafeed d-flex flex-wrap">
                                <li><img src="<c:url value="/image/instagram/Image-01.jpg"/>" alt=""></li>
                                <li><img src="<c:url value="/image/instagram/Image-02.jpg"/>" alt=""></li>
                                <li><img src="<c:url value="/image/instagram/Image-03.jpg"/>" alt=""></li>
                                <li><img src="<c:url value="/image/instagram/Image-04.jpg"/>" alt=""></li>
                                <li><img src="<c:url value="/image/instagram/Image-05.jpg"/>" alt=""></li>
                                <li><img src="<c:url value="/image/instagram/Image-06.jpg"/>" alt=""></li>
                                <li><img src="<c:url value="/image/instagram/Image-07.jpg"/>" alt=""></li>
                                <li><img src="<c:url value="/image/instagram/Image-08.jpg"/>" alt=""></li>
                            </ul>
                        </div>
                    </div>            
                </div>
                <div class="border_line"></div>
                <div class="row footer-bottom d-flex justify-content-between align-items-center">
                    <p class="col-lg-8 col-sm-12 footer-text m-0"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                    <div class="col-lg-4 col-sm-12 footer-social">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-dribbble"></i></a>
                        <a href="#"><i class="fa fa-behance"></i></a>
                    </div>
                </div>
            </div>
        </footer>
    <!--================ End footer Area  =================-->
        
        
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
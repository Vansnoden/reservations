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
    </head>
    <body>
        <!--================Header Area =================-->
        <header class="header_area">
            <div class="container">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <a class="navbar-brand logo_h" href="<c:url value="/acceuil"/>"><img src="<c:url value="/image/Logo.png"/>" alt=""></a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                        <ul class="nav navbar-nav menu_nav ml-auto">
                            <li class="nav-item active"><a class="nav-link" href="<c:url value="/acceuil"/>">ACCEUIL</a></li> 
                            <li class="nav-item"><a class="nav-link" href="about.html">A PROPOS DE NOUS</a></li>
                            <li class="nav-item submenu dropdown">
                                <a href="<c:url value="/form-reserv-client-1"/>" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> FAIRE UNE RESERVATION</a>
                                <ul class="dropdown-menu">
                                    <li class="nav-item"><a class="nav-link" href="blog.html">MODIFIER RESERVATION</a></li>
                                    <li class="nav-item"><a class="nav-link" href="blog-single.html">ANNULER RESERVATION</a></li>
                                </ul>
                            </li> 
                            <li class="nav-item"><a class="nav-link" href="elements.html">CONSULTER CHAMBRES</a></li>
                            <li class="nav-item"><a class="nav-link" href="contact.html">CONTACTS</a></li>
                        </ul>
                    </div> 
                </nav>
            </div>
        </header>
        <!--================Header Area =================-->
        
        <!--================Banner Area =================-->
        <section class="banner_area">
            <div class="booking_table d_flex align-items-center">
              <div class="overlay bg-parallax" data-stellar-ratio="0.9" data-stellar-vertical-offset="0" data-background=""></div>
        		<div class="container">
          			<div class="banner_content text-center">
            			<h6>Loin de la vie monotone</h6>
            			<h2>Detendez votre esprit</h2>
            			<p>Venez profiter de la multitude de services offert par notre luxueux <br> hotel a des prix tres reduits. Reservez des maintenant !!! </p>
            			<a href="<c:url value="/form-reserv-client-1"/>" class="btn theme_btn button_hover"> FAIRE UNE RESERVATION </a>
          			</div>
        		</div>
            </div>
            <div class="hotel_booking_area position">
                    <div class="container">
                    <div class="hotel_booking_table">
                        <div class="col-md-3">
                            <h2>Commencez<br>Maintenant</h2>
                        </div>
                        <div class="col-md-9">
                            <form method="post" action="acceuil">
                            	<div class="boking_table">
                                	<div class="row">
                                    	<div class="col-md-4">
                                        	<div class="book_tabel_item">
                                            	<div class="form-group">
                                                	<div class='input-group'>
                                                    	<input type='text' name="nom" class="form-control" placeholder="<c:choose><c:when test="${!empty form1.erreurs['nom']}">${sessionScope.client.nom} (INVALIDE)</c:when><c:otherwise>Entrez votre nom</c:otherwise></c:choose>" value="<c:choose><c:when test="${!empty sessionScope.client.nom && empty form1.erreurs['nom']}">${sessionScope.client.nom}</c:when><c:otherwise></c:otherwise></c:choose>"
														 />
                                                	</div>
                                            	</div>
                                            	<div class="form-group">
                                                	<div class='input-group'>
                                                    	<input type='text' name="prenom" class="form-control" placeholder="<c:choose><c:when test="${!empty form1.erreurs['prenom']}">${sessionScope.client.prenom} (INVALIDE)</c:when><c:otherwise>Entrez votre prenom</c:otherwise></c:choose>" value="<c:choose><c:when test="${!empty sessionScope.client.prenom && empty form1.erreurs['prenom']}">${sessionScope.client.prenom}</c:when><c:otherwise></c:otherwise></c:choose>"
                                                    	/> 
                                                	</div>
                                            	</div>
                                        	</div>
                                    	</div>
                                    	<div class="col-md-4">
                                        	<div class="book_tabel_item">
                                            	<div class="form-group">
                                                	<div class='input-group'>
                                                    	<input type='text' name="nomjour" class="form-control" placeholder="<c:choose><c:when test="${!empty form1.erreurs['nomjour']}">${sessionScope.client.nomjour} (INVALIDE)</c:when><c:otherwise>Duree sejour (nombre de jours)</c:otherwise></c:choose>" value="<c:choose><c:when test="${!empty sessionScope.client.nomjour && empty form1.erreurs['nomjour'] && sessionScope.client.nomjour != 0}">${sessionScope.client.nomjour}</c:when><c:otherwise></c:otherwise></c:choose>" 
                                                    	/>
                                                	</div>
                                            	</div>
                                            	<div class="form-group">
                                                	<div class='input-group'>
                                                    	<input type='text' name="nompers" class="form-control" placeholder="<c:choose><c:when test="${!empty form1.erreurs['nompers']}">${sessionScope.client.nompers} (INVALIDE)</c:when><c:otherwise>Nombres de personnes</c:otherwise></c:choose>" value="<c:choose><c:when test="${!empty sessionScope.client.nompers && empty form1.erreurs['nompers'] && sessionScope.client.nompers != 0}">${sessionScope.client.nompers}</c:when><c:otherwise></c:otherwise></c:choose>"  
                                                    	/>
                                                	</div>
                                            	</div>
                                        	</div>
                                    	</div>
                                    	<div class="col-md-4">
                                        	<div class="book_tabel_item">
                                            	<div class="form-group">
                                                	<div class='input-group date' >
                                                    	<input type='text' name="email" class="form-control" placeholder="<c:choose><c:when test="${!empty form1.erreurs['email']}">    (INVALIDE)</c:when><c:otherwise>Adresse email</c:otherwise></c:choose>" value="<c:choose><c:when test="${!empty sessionScope.client.email && empty form1.erreurs['email']}">${sessionScope.client.email}</c:when><c:otherwise></c:otherwise></c:choose>"
                                                    	/>
                                                	</div>
                                            	</div>
                                            	<!--<a class="book_now_btn button_hover" href="<c:url value="/Vues/formReservClient1.jsp"/>">RESERVEZ MAINTENANT</a>--> 
                                        		<div class="form-group">
                                        			<div class='input-group date' >
                                        				<input type="submit" value="RESERVEZ MAINTENANT" class="book_now_btn button_hover" /> 
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
            </div>
        </section>
        <!--================Banner Area =================-->
        
        <!--================ Accomodation Area  =================-->
        <section class="accomodation_area section_gap">
            <div class="container">
                <div class="section_title text-center">
                    <h2 class="title_color">Hebergement a l hotel !</h2>
                    <p>Nous vivons tous a une epoque qui appartient aux jeunes de coeur. La vie qui devient extremement rapide </p>
                </div>
                <div class="row mb_30">
                    <div class="col-lg-3 col-sm-6">
                        <div class="accomodation_item text-center">
                            <div class="hotel_img">
                                <img src="<c:url value="/image/room1.jpg"/>" alt="">
                                <a href="#" class="btn theme_btn button_hover">RESERVER</a>
                            </div>
                            <a href="#"><h4 class="sec_h4">Double chambre DeLuxe</h4></a>
                            <h5>20.000CFA<small>/nuit</small></h5>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="accomodation_item text-center">
                            <div class="hotel_img">
                                <img src="<c:url value="/image/room2.jpg"/>" alt="">
                                <a href="#" class="btn theme_btn button_hover">RESERVER</a>
                            </div>
                            <a href="#"><h4 class="sec_h4">CHAMBRE DELUXE</h4></a>
                            <h5>15.000CFA<small>/nuit</small></h5>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="accomodation_item text-center">
                            <div class="hotel_img">
                                <img src="<c:url value="/image/room3.jpg"/>" alt="">
                                <a href="#" class="btn theme_btn button_hover">RESERVER</a>
                            </div>
                            <a href="#"><h4 class="sec_h4">SUITE LUNE DE MIEL</h4></a>
                            <h5>50.000CFA<small>/nuit</small></h5>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="accomodation_item text-center">
                            <div class="hotel_img">
                                <img src="<c:url value="/image/room4.jpg"/>" alt="">
                                <a href="#" class="btn theme_btn button_hover">RESERVER</a>
                            </div>
                            <a href="#"><h4 class="sec_h4">ECONOMIE DOUBLE</h4></a>
                            <h5>10.000CFA<small>/nuit</small></h5>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--================ Accomodation Area  =================-->
        
        <!--================ Facilities Area  =================-->
        <section class="facilities_area section_gap">
            <div class="overlay bg-parallax" data-stellar-ratio="0.8" data-stellar-vertical-offset="0" data-background="">  
            </div>
            <div class="container">
                <div class="section_title text-center">
                    <h2 class="title_w">Royal Facilities</h2>
                    <p>Qui sont extremement amoureux du systeme ecologique.</p>
                </div>
                <div class="row mb_30">
                    <div class="col-lg-4 col-md-6">
                        <div class="facilities_item">
                            <h4 class="sec_h4"><i class="lnr lnr-dinner"></i>Restaurant</h4>
                            <p>Profitez des multiples repas de diverses natures concoctees par des chefs experimentes ! Vous allez vous regalez ! </p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="facilities_item">
                            <h4 class="sec_h4"><i class="lnr lnr-bicycle"></i>Sports CLub</h4>
                            <p> Vous pouvez utiliser notre salle de sports des lors que vous etes clients. Elle possede des appareils a la pointe de la technologie !</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="facilities_item">
                            <h4 class="sec_h4"><i class="lnr lnr-shirt"></i>Swimming Pool</h4>
                            <p>Profitez egalement de notre boutique !</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="facilities_item">
                            <h4 class="sec_h4"><i class="lnr lnr-car"></i>Tourisme</h4>
                            <p>Profitez du tourisme offert !</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="facilities_item">
                            <h4 class="sec_h4"><i class="lnr lnr-construction"></i>Gymnase</h4>
                            <p>Profitez du gymnase !</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="facilities_item">
                            <h4 class="sec_h4"><i class="lnr lnr-coffee-cup"></i>Bar</h4>
                            <p>Usage of the Internet is becoming more common due to rapid advancement of technology and power.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--================ Facilities Area  =================-->
        
        <!--================ About History Area  =================-->
        <section class="about_history_area section_gap">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 d_flex align-items-center">
                        <div class="about_content ">
                            <h2 class="title title_color">A propos <br>de notre histoire,<br>mission et vision.</h2>
                            <p>On se moque souvent de comportements inappropries car «les garcons seront des garcons». Les femmes sont confrontees a des normes de conduite elevees, en particulier sur leur lieu de travail, c est pourquoi il est crucial qu en tant que femmes, notre comportement au travail soit irreprochable. Comportement inapproprie qui est souvent ri.</p>
                            <a href="#" class="button_hover theme_btn_two">DEMANDER UN PRIX PERSONNALISE</a>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <img class="img-fluid" src="<c:url value="/image/about_bg.jpg"/>" alt="img">
                    </div>
                </div>
            </div>
        </section>
        <!--================ About History Area  =================-->
        
        <!--================ Testimonial Area  =================-->
        <section class="testimonial_area section_gap">
            <div class="container">
                <div class="section_title text-center">
                    <h2 class="title_color">Temoignage de nos clients</h2>
                    <p>Voici l avis honnete et sinceres de quelques clients qui se sont portees volontaires pour donner leurs avis sur la qualite service </p>
                </div>
                <div class="testimonial_slider owl-carousel">
                    <div class="media testimonial_item">
                        <img class="rounded-circle" src="<c:url value="/image/testtimonial-1.jpg"/>" alt="">
                        <div class="media-body">
                            <p></p>
                            <a href="#"><h4 class="sec_h4">Fanny Spencer</h4></a>
                            <div class="star">
                                <a href="#"><i class="fa fa-star"></i></a>
                                <a href="#"><i class="fa fa-star"></i></a>
                                <a href="#"><i class="fa fa-star"></i></a>
                                <a href="#"><i class="fa fa-star"></i></a>
                                <a href="#"><i class="fa fa-star-half-o"></i></a>
                            </div>
                        </div>
                    </div>    
                    <div class="media testimonial_item">
                        <img class="rounded-circle" src="<c:url value="/image/testtimonial-1.jpg"/>" alt="">
                        <div class="media-body">
                            <p>Tres beau hotel. La qualite du service est vraiment remarquable ! </p>
                            <a href="#"><h4 class="sec_h4">Fanny Spencer</h4></a>
                            <div class="star">
                                <a href="#"><i class="fa fa-star"></i></a>
                                <a href="#"><i class="fa fa-star"></i></a>
                                <a href="#"><i class="fa fa-star"></i></a>
                                <a href="#"><i class="fa fa-star"></i></a>
                                <a href="#"><i class="fa fa-star-half-o"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="media testimonial_item">
                        <img class="rounded-circle" src="<c:url value="/image/testtimonial-1.jpg"/>" alt="">
                        <div class="media-body">
                            <p>Tres beau hotel. La qualite du service est vraiment remarquable ! </p>
                            <a href="#"><h4 class="sec_h4">Fanny Spencer</h4></a>
                            <div class="star">
                                <a href="#"><i class="fa fa-star"></i></a>
                                <a href="#"><i class="fa fa-star"></i></a>
                                <a href="#"><i class="fa fa-star"></i></a>
                                <a href="#"><i class="fa fa-star"></i></a>
                                <a href="#"><i class="fa fa-star-half-o"></i></a>
                            </div>
                        </div>
                    </div>    
                    <div class="media testimonial_item">
                        <img class="rounded-circle" src="<c:url value="/image/testtimonial-1.jpg"/>" alt="">
                        <div class="media-body">
                            <p>Tres beau hotel. La qualite du service est vraiment remarquable ! </p>
                            <a href="#"><h4 class="sec_h4">Fanny Spencer</h4></a>
                            <div class="star">
                                <a href="#"><i class="fa fa-star"></i></a>
                                <a href="#"><i class="fa fa-star"></i></a>
                                <a href="#"><i class="fa fa-star"></i></a>
                                <a href="#"><i class="fa fa-star"></i></a>
                                <a href="#"><i class="fa fa-star-half-o"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--================ Testimonial Area  =================-->
        
        <!--================ Latest Blog Area  =================-->
        <section class="latest_blog_area section_gap">
            <div class="container">
                <div class="section_title text-center">
                    <h2 class="title_color">Derniers articles du blog</h2>
                    <p>Les dernieres actualites de Royal Hotel ici presentes !!! </p>
                </div>
                <div class="row mb_30">
                    <div class="col-lg-4 col-md-6">
                        <div class="single-recent-blog-post">
                            <div class="thumb">
                                <img class="img-fluid" src="<c:url value="/image/blog/blog-1.jpg"/>" alt="post">
                            </div>
                            <div class="details">
                                <div class="tags">
                                    <a href="#" class="button_hover tag_btn">Travel</a>
                                    <a href="#" class="button_hover tag_btn">Life Style</a>
                                </div>
                                <a href="#"><h4 class="sec_h4">Publicite a faible cout</h4></a>
                                <p>Acres of Diamonds… you’ve read the famous story, or at least had it related to you. A farmer.</p>
                                <h6 class="date title_color">31st January,2018</h6>
                            </div>  
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="single-recent-blog-post">
                            <div class="thumb">
                                <img class="img-fluid" src="<c:url value="/image/blog/blog-2.jpg"/>" alt="post">
                            </div>
                            <div class="details">
                                <div class="tags">
                                    <a href="#" class="button_hover tag_btn">Travel</a>
                                    <a href="#" class="button_hover tag_btn">Life Style</a>
                                </div>
                                <a href="#"><h4 class="sec_h4">Annonces creatives libres</h4></a>
                                <p>Self-doubt and fear interfere with our ability to achieve or set goals. Self-doubt and fear are</p>
                                <h6 class="date title_color">31st January,2018</h6>
                            </div>  
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="single-recent-blog-post">
                            <div class="thumb">
                                <img class="img-fluid" src="<c:url value="/image/blog/blog-3.jpg"/>" alt="post">
                            </div>
                            <div class="details">
                                <div class="tags">
                                    <a href="#" class="button_hover tag_btn">Travel</a>
                                    <a href="#" class="button_hover tag_btn">Life Style</a>
                                </div>
                                <a href="#"><h4 class="sec_h4"> Obtenir une chambre gratuitement</h4></a>
                                <p>Why do you want to motivate yourself? Actually, just answering that question fully can </p>
                                <h6 class="date title_color">31st January,2018</h6>
                            </div>  
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--================ Recent Area  =================-->
        
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
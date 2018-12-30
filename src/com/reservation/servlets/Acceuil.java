package com.reservation.servlets;
import com.reservation.forms.*;
import com.reservation.beans.*;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class Acceuil
 */
//@WebServlet("/Acceuil")
public class Acceuil extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
    public static final String ATT_CLIENT = "client";
    public static final String ATT_FORM = "form";
    public static final String VUE1      = "/Vues/formReservClient1.jsp";
    public static final String VUE2      = "/Vues/Acceuil.jsp";

    public void doGet( HttpServletRequest request,HttpServletResponse response ) throws ServletException, IOException {
        /* Affichage de la page d'inscription */
        this.getServletContext().getRequestDispatcher( VUE2 ).forward( request, response );
    }

    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        /* Pr�paration de l'objet formulaire */
        AcceuilForm form = new AcceuilForm();
        Client client = form.inscrireClient( request );
        /* Stockage du formulaire et du bean dans l'objet request */
        request.setAttribute( ATT_FORM, form );
        request.setAttribute( ATT_CLIENT, client );
        System.out.println("----> LA VALEUR DU RESULTAT EST : " + form.getResultat());
        if(form.getResultat()=="1") {  this.getServletContext().getRequestDispatcher( VUE1 ).forward( request, response ); }
        else { this.getServletContext().getRequestDispatcher( VUE2 ).forward( request, response ); }
        
    }

}

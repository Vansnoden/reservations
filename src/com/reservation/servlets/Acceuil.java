package com.reservation.servlets;
import com.reservation.forms.*;
import com.reservation.beans.*;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class Acceuil
 */
//@WebServlet("/Acceuil")
public class Acceuil extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
    public static final String ATT_CLIENT = "client";
    public static final String ATT_FORM = "form1";
    public static final String VUE2      = "/Vues/Acceuil.jsp";
    public static final String ATT_SESSION_USER = "client";

    public void doGet( HttpServletRequest request,HttpServletResponse response ) throws ServletException, IOException {
    	// CREATION DE LA VARIABLE DE SESSION
    	HttpSession session = request.getSession();
    	// CREATION DU BEAN CLIENT QUI SERA UTILISE POUR TOUTES LES REQUETES
        Client client = new Client();
        // STOCKAGE DU BEAN UTILISATEUR DANS LA SESSION
        session.setAttribute( ATT_SESSION_USER, client );
        /* Affichage de la page d'inscription */
        this.getServletContext().getRequestDispatcher( VUE2 ).forward( request, response );
    }

    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        // RECUPERATION DE LA VARIABLE DE SESSION
    	HttpSession session = request.getSession();
    	/* Pr�paration de l'objet formulaire */
        AcceuilForm form = new AcceuilForm();
        // CREATION DU CLIENT QUI SERA UTILISE POUR TOUTES LES REQUETES
        Client client = (Client) session.getAttribute(ATT_SESSION_USER);
        form.inscrireClient( request,client );
        /* Stockage du formulaire dans l'objet request */
        request.setAttribute( ATT_FORM, form );
        // STOCKAGE DU BEAN UTILISATEUR DANS LA SESSION
        session.setAttribute( ATT_SESSION_USER, client );
        if(form.getResultat()=="1") {  response.sendRedirect( "/Reservation/form-reserv-client-1" ); }
        else { this.getServletContext().getRequestDispatcher( VUE2 ).forward( request, response ); }
        
    }

}

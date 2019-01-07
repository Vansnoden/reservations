package com.reservation.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.reservation.beans.Client;
import com.reservation.forms.VersementForm;


public class Versement extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public static final String ATT_SESSION_USER = "client";
    public static final String ATT_FORM = "form3";
    public static final String VUE2      = "/WEB-INF/versement.jsp";
    
    public Versement() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/versement.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/* Pr�paration de l'objet formulaire */
        VersementForm form = new VersementForm();
        // RECUPERATION DE LA VARIABLE DE SESSION
        HttpSession session = request.getSession();
        Client client = (Client) session.getAttribute(ATT_SESSION_USER);
        form.inscrireClient(request, client);
        /* Stockage du formulaire dans l'objet request */
        request.setAttribute( ATT_FORM, form );
        // STOCKAGE DU BEAN UTILISATEUR DANS LA SESSION
        session.setAttribute( ATT_SESSION_USER, client );
        if(form.getResultat()=="1") {  response.sendRedirect( "/Reservation/Success.jsp" ); }
        else { this.getServletContext().getRequestDispatcher( VUE2 ).forward( request, response ); }
	}

}

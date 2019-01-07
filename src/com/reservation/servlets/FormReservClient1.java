package com.reservation.servlets;
import com.reservation.beans.*;
import com.reservation.forms.*;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class FormReservClient1
 */
//@WebServlet("/FormReservClient1")
public class FormReservClient1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public static final String ATT_SESSION_USER = "client";
    public static final String ATT_FORM = "form2";
    public static final String VUE2      = "/Vues/formReservClient1.jsp";
    
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FormReservClient1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.getServletContext().getRequestDispatcher( VUE2 ).forward( request, response );
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 /* Pr�paration de l'objet formulaire */
        FormulReservClient1Form form = new FormulReservClient1Form();
        // RECUPERATION DE LA VARIABLE DE SESSION
        HttpSession session = request.getSession();
        Client client = (Client) session.getAttribute(ATT_SESSION_USER);
        form.inscrireClient(request, client);
        /* Stockage du formulaire dans l'objet request */
        request.setAttribute( ATT_FORM, form );
        // STOCKAGE DU BEAN UTILISATEUR DANS LA SESSION
        session.setAttribute( ATT_SESSION_USER, client );
        if(form.getResultat()=="1") {  response.sendRedirect( "/Reservation/versement" ); }
        else { this.getServletContext().getRequestDispatcher( VUE2 ).forward( request, response ); }
    }

}

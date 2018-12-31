package com.reservation.servlets;
import com.reservation.beans.*;
import com.reservation.forms.*;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FormReservClient1
 */
//@WebServlet("/FormReservClient1")
public class FormReservClient1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public static final String ATT_CLIENT = "client";
    public static final String ATT_FORM = "form";
    public static final String VUE1      = "/Vues/formReservClient2.jsp";
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
		Client client = (Client) request.getAttribute(ATT_CLIENT);
		this.getServletContext().getRequestDispatcher( VUE2 ).forward( request, response );
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 /* Pr�paration de l'objet formulaire */
		System.out.println("Ici");
        FormulReservClient1Form form = new FormulReservClient1Form();
        Client client = form.inscrireClient( request );
        // Stockage du formulaire et du bean dans l'objet request 
        request.setAttribute( ATT_FORM, form );
        request.setAttribute( ATT_CLIENT, client );
        if(form.getResultat()=="1") {  
        	System.out.println(client.getNom());
        	System.out.println(client.getPrenom());
        	System.out.println(client.getEmail());
        	System.out.println(client.getDateArriv());
        	System.out.println(client.getNomjour());
        	System.out.println(client.getDateDepart());
        	System.out.println(client.getNompers());
        	System.out.println(client.getNumeroCompte());
        	this.getServletContext().getRequestDispatcher("/Vues/Acceuil.jsp").forward( request, response );
        	//this.getServletContext().getRequestDispatcher( VUE1 ).forward( request, response );
        }
        else { this.getServletContext().getRequestDispatcher( VUE2 ).forward( request, response ); }
    }

}

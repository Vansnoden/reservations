package com.reservation.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.reservation.beans.Receptionniste;;

public class Ajout_recep extends HttpServlet {
	private static final long serialVersionUID = 1L;
         
    public Ajout_recep() {
    	super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/admin/ajoutReceptionniste.jsp").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Receptionniste recep = new Receptionniste();
		recep.setNom(request.getParameter("nom"));
		recep.setPrenom(request.getParameter("prenom"));
		recep.setEmail(request.getParameter("email"));
		recep.setTel(Integer.valueOf(request.getParameter("tel")));
		recep.setId(request.getParameter("id"));
		//code a decommenter a l'avenir
		/*
		 ConnectionBD connect = new ConnectionBD();
		 String message = connect.insert(recep);
		 request.setAttribute("message",message);
		 */
		doGet(request, response);
	}

}

package com.reservation.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Accueil_admin
 */
//@WebServlet("/Accueil_admin")
public class Accueil_admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String chemin="/WEB-INF/admin/accueil_admin.jsp";
    public Accueil_admin() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher(chemin).forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//ici on teste la validite du login et du mot de passe
		String login=request.getParameter("login");
		String pass=request.getParameter("passwd");
		//le code suivant sera decommente apres etablissement du code de gestion de la bd
		/*
		 String tableau = "";
		 String 
		 ConnectionBD connect = new ConnectionBD();
		 if(connect.testLogPass()){
		 	tableau = connect.listeRecep();
		 	chemin = "WEB-INF/admin/accueil_admin.jsp";
		 	request.setAttribute("tableau",tableau);
		 }
		 else{
		 	chemin = "WEB-INF/connection.jsp";
			erreur ="erreur de connection";
			request.setAttribute("message",erreur);
		 }
		 */
		doGet(request, response);
	}

}

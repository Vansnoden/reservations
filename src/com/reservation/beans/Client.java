package com.reservation.beans;

public class Client {

	private String nom;
	private String prenom;
	private String email;
//	au lieu de ceci private double nomjour; avoir plustot:
	private String dateArriv;
	private String dateDepart;
	private int nompers;
	private int nomjour;
	private String telephone;
	private String numeroCompte;
	
	public String getNom() {
		return nom;
	}
	
	public void setNom(String nom) {
		this.nom = nom;
	}
	
	public String getPrenom() {
		return prenom;
	}
	
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public int getNompers() {
		return nompers;
	}
	
	public void setNompers(int nompers) {
		this.nompers = nompers;
	}

	public String getDateDepart() {
		return dateDepart;
	}

	public void setDateDepart(String dateDepart) {
		this.dateDepart = dateDepart;
	}

	public String getDateArriv() {
		return dateArriv;
	}

	public void setDateArriv(String dateArriv) {
		this.dateArriv = dateArriv;
	}

	public int getNomjour() {
		return nomjour;
	}

	public void setNomjour(int nomjour) {
		this.nomjour = nomjour;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getNumeroCompte() {
		return numeroCompte;
	}

	public void setNumeroCompte(String numeroCompte) {
		this.numeroCompte = numeroCompte;
	}
	
	
}

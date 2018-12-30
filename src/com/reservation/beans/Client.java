package com.reservation.beans;

public class Client {

	private String nom;
	private String prenom;
	private String email;
	private double nomjour;
	private double nompers;
	
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
	
	public double getNompers() {
		return nompers;
	}
	
	public void setNompers(double nompers) {
		this.nompers = nompers;
	}
	
	public double getNomjour() {
		return nomjour;
	}
	
	public void setNomjour(double nomjour) {
		this.nomjour = nomjour;
	}
	
	
}

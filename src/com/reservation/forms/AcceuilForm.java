package com.reservation.forms;

import com.reservation.beans.*;

import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

//on ne gere pas le nombre de jour le input de type date pour la date d'arrivee et la date de depart sont requis
public final class AcceuilForm {

	private static final String CHAMP_NOM = "nom";
	private static final String CHAMP_PRENOM = "prenom";
	private static final String CHAMP_EMAIL = "email";
    private static final String CHAMP_PERS  = "nompers";

    private String resultat;
    private Map<String, String> erreurs     = new HashMap<String, String>();

    public Map<String, String> getErreurs() {
        return erreurs;
    }
    
    public String getResultat() {
        return resultat;
    }

    public Client inscrireClient( HttpServletRequest request ) {
        
    	String email = getValeurChamp( request, CHAMP_EMAIL );
        String prenom = getValeurChamp( request, CHAMP_PRENOM );
        String nompers = getValeurChamp( request, CHAMP_PERS );
        String nom = getValeurChamp( request, CHAMP_NOM );
        
        double valeurnompers = 0;
        
        Client client = new Client();
        
        try {
            validationEmail( email );
        } catch ( Exception e ) {
            setErreur( CHAMP_EMAIL, e.getMessage() );
        }
        client.setEmail( email );

        try {
            validationNom( nom );
        } catch ( Exception e ) {
            setErreur( CHAMP_NOM, e.getMessage() );
        }
        client.setNom(nom);     
        
        try {
            validationNom( prenom );
        } catch ( Exception e ) {
            setErreur( CHAMP_PRENOM, e.getMessage() );
        }
        client.setPrenom(prenom);
        
        try {
        	valeurnompers = validationNombre( nompers );
        	} catch ( Exception e ) {
        	setErreur( CHAMP_PERS, e.getMessage() );
        	}
        client.setNompers(valeurnompers);
     
        if ( erreurs.isEmpty() ) {
            resultat = "1";
        } else {
            resultat = "0";
        }
        
        return client;
    }

    private void validationEmail( String email ) throws Exception {
        if ( email != null ) {
            if ( !email.matches( "([^.@]+)(\\.[^.@]+)*@([^.@]+\\.)+([^.@]+)" ) ) {
                throw new Exception( "INVALIDE" );
            }
        } else {
            throw new Exception( "INVALIDE" );
        }
    }


    private void validationNom( String nom ) throws Exception {
    	System.out.println(nom);
    	if (nom != null) {
	        if ( nom != null && nom.length() < 3 ) {
	            throw new Exception( "INVALIDE" );
	        }
    	} else {
            throw new Exception( "INVALIDE" );
        }
    }
    
    private double validationNombre( String montant ) throws Exception {
    	double temp;
    	if ( montant != null ) {
    		try {
    			temp = Double.parseDouble( montant );
    			if ( temp < 0 ) {
    				throw new Exception( "INVALIDE" );
    			}
    		} catch ( NumberFormatException e ) { 
    			temp = -1;
    			throw new Exception( "INVALIDE" );
    		}
    	} else {
    		temp = -1;
    		throw new Exception( "INVALIDE" );
    	}
    	return temp;
    }
    
    private void setErreur( String champ, String message ) {
        erreurs.put( champ, message );
    }

    private static String getValeurChamp( HttpServletRequest request, String nomChamp ) {
        String valeur = request.getParameter( nomChamp );
        if ( valeur == null || valeur.trim().length() == 0 ) {
            return null;
        } else {
            return valeur.trim();
        }
    }
}
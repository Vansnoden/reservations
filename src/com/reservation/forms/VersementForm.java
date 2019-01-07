package com.reservation.forms;

import com.reservation.beans.*;

import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

public final class VersementForm {

	private static final String CHAMP_CODE = "code";
	private static final String CHAMP_MONT = "montant";

    private String resultat;
    private Map<String, String> erreurs     = new HashMap<String, String>();

    public Map<String, String> getErreurs() {
        return erreurs;
    }
    
    public String getResultat() {
        return resultat;
    }

    public void inscrireClient( HttpServletRequest request, Client client ) {
        
        String code = getValeurChamp( request, CHAMP_CODE );
        String montant = getValeurChamp( request, CHAMP_MONT );
        
        double valeurMontant = 0;
        
        
        try {
            validationCode( code );
        } catch ( Exception e ) {
            setErreur( CHAMP_CODE, e.getMessage() );
        }

        try {
            valeurMontant = validationMontant( montant );
        } catch ( Exception e ) {
            setErreur( CHAMP_MONT, e.getMessage() );
        }
        client.setMontant(valeurMontant);    
        
        if ( erreurs.isEmpty() ) {
            resultat = "1";
            // CELA SIGNIFIE QUE TOUS LES CHAMPS SONT OK.
            //ON PROCEDE A L ENREGISTREMENT DU BEAN DE LA SESSION DANS LA BASE DE DONNEES
            //ON SUPPRIME LE BEAN ET NOUS AMENE A LA PAGE RECU AVEC LE LIEN VERS L ACCEUIL !!!
        } else {
            resultat = "0";
        }
        
    }

    private void validationCode ( String code ) throws Exception {
    	if ( code != null ) {
    		if ( !code.matches( "^\\d+$" ) ) {
    			throw new Exception( "Le code doit uniquement contenir des chiffres." );
    		} else if ( code.length() < 4 ) {
    			throw new Exception( "Le code doit contenir au moins 4 chiffres." );
    		}
    	} else {
    		throw new Exception( "Merci d'entrer le code que vous avez recus." );
    	}
    }
    
    private double validationMontant( String montant ) throws Exception {
    	double temp;
    	if ( montant != null ) {
    		try {
    			temp = Double.parseDouble( montant );
    			if ( temp < 0 ) {
    				throw new Exception( "Le montant doit être un nombre positif." );
    			}
    		} catch ( NumberFormatException e ) {
    			temp = -1;
    			throw new Exception( "Le montant doit être un nombre." );
    		}
    	} else {
    		temp = -1;
    		throw new Exception( "Merci d'entrer un montant." );
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
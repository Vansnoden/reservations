package com.reservation.forms;

import com.reservation.beans.*;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

//on ne gere pas le nombre de jour le input de type date pour la date d'arrivee et la date de depart sont requis
public final class FormulReservClient1Form {

	private static final String CHAMP_NOM = "nom";
	private static final String CHAMP_PRENOM = "prenom";
	private static final String CHAMP_EMAIL = "email";
    private static final String CHAMP_PERS  = "nompers";
    private static final String CHAMP_DUREE  = "nomjour";
    private static final String CHAMP_DATE  = "datearriv";
    private static final String CHAMP_TEL  = "telephone";
    private static final String CHAMP_NUMCOMP  = "compte";

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
        String nomjour = getValeurChamp( request, CHAMP_DUREE );
        String nom = getValeurChamp( request, CHAMP_NOM );
        String telephone = getValeurChamp( request, CHAMP_TEL );
        String datearriv = getValeurChamp( request, CHAMP_DATE );	
        String compte = getValeurChamp( request, CHAMP_NUMCOMP );
        String datedepart = null;
        
        int valeurnompers = 0;
        int valeurnomjour = 0;
        
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
        
        try {
        	valeurnomjour = validationNombre( nomjour );
        	} catch ( Exception e ) {  setErreur( CHAMP_DUREE, e.getMessage() );
        	}
        client.setNomjour(valeurnomjour);   
        
        try {
        	validationTel(telephone);
        } catch (Exception e) {
        	setErreur( CHAMP_TEL, e.getMessage() );
        }
        client.setTelephone(telephone);
        
        try {
        	validationDate(datearriv);
        } catch (Exception e) {
        	setErreur( CHAMP_DATE, e.getMessage() );
        }
        client.setDateArriv(datearriv);
        
        try {
        	Calendar Cal = Calendar.getInstance();
        	Cal = conversionStringtoDate(datearriv);
        	Cal.add(Calendar.DATE, valeurnomjour);
        	datedepart = conversionDatetoString(Cal);
        } catch (Exception e) {
        	System.out.println("Erreur !!!");
        }
        client.setDateDepart(datedepart);
        
        try {
        	validationCompte(compte);
        } catch (Exception e) {
        	setErreur( CHAMP_NUMCOMP, e.getMessage() );
        }
        client.setNumeroCompte(compte);
        
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
                throw new Exception( "Merci de saisir une adresse mail valide." );
            }
        } else {
            throw new Exception( "Merci de saisir une adresse mail." );
        }
    }


    private void validationNom( String nom ) throws Exception {
    	if (nom != null) {
	        if ( nom != null && nom.length() < 3 ) {
	            throw new Exception( "Le nom d'utilisateur doit contenir au moins 3 caract�res." );
	        }
    	} else {
            throw new Exception( "Merci de saisir votre nom." );
        }
    }
    
    private int validationNombre( String nombre ) throws Exception {
    	int temp;
    	if ( nombre != null ) {
    		try {
    			temp = Integer.parseInt(nombre);
    			if ( temp < 0 ) {
    				throw new Exception( "Le nombre doit être positif." );
    			}
    		} catch ( NumberFormatException e ) { 
    			temp = -1;
    			throw new Exception( "Le nombre n est pas correct." );
    		}
    	} else {
    		temp = -1;
    		throw new Exception( "Merci de saisir un nombre" );
    	}
    	return temp;
    }
    
    private void validationTel( String telephone ) throws Exception {
    	if ( telephone != null ) {
    		if ( !telephone.matches( "^\\d+$" ) ) {
    			throw new Exception( "Le numéro de téléphone doit uniquement contenir des chiffres." );
    		} else if ( telephone.length() < 9 ) {
    			throw new Exception( "Le numéro de téléphone doit contenir au moins 9 chiffres." );
    		}
    	} else {
    		throw new Exception( "Merci d'entrer un numéro de téléphone." );
    	}
    }
    
    public void validationDate (String date) throws Exception {
    	if(date == null) throw new Exception( "Merci d'entrer votre date d arrivee." );
    }
    
    public void validationCompte (String compte) throws Exception {
    	if(compte == null) throw new Exception( "Merci d'entrer un numero de compte." );
    }
    
    public Calendar conversionStringtoDate (String string) {
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        Calendar dateC = Calendar.getInstance();
        try{
           dateC.setTime(df.parse(string));
           return dateC;
        }catch(Exception e){
        	System.out.println("ERROR");
        	return null;
        }
    }
    
    public String conversionDatetoString(Calendar date) {
    	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
    	return df.format(date.getTime());
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
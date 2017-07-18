package src.main;

import org.owasp.esapi.*;
import org.owasp.esapi.errors.EncodingException;

public class TestForURLEncode {
	
	
	public static void main(String args[]){
		String url = "http://www.google.com";
		String html = "<html><head></head></html>";
	    Encoder encoder = ESAPI.encoder();
	  try{
	  url = encoder.encodeForURL(url);
	  html = encoder.encodeForHTML(html);
	  }catch(EncodingException e){
		  System.out.println(e.toString());
	  }
	  System.out.println(url);
	  System.out.println(html);
	  //either pass a command line argument like below or place the property files in src/main/resources folder 
	 // -Dorg.owasp.esapi.resources="C:\Users\OWNER\workspace\owaspTest1\resources"
    }
}

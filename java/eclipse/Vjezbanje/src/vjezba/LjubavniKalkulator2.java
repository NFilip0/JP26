package vjezba;

import javax.swing.JOptionPane;

public class LjubavniKalkulator2 {
	
	public static void main(String[] args) {
		
		String prvoIme = JOptionPane.showInputDialog("Prvo ime: ");
	    System.out.print(prvoIme);
	    String drugoIme = JOptionPane.showInputDialog("Drugo ime: ");
	    System.out.print(" ");
	    System.out.print(drugoIme);
	    System.out.println();
		    int distinct = 0 ;
		    
		    for (int i = 0; i < prvoIme.length(); i++) {

		        for (int j = 0; j < prvoIme.length(); j++) {

		            if(prvoIme.charAt(i)==prvoIme.charAt(j))
		            {
		                distinct++;

		            }
		        }
		        System.out.println(prvoIme.charAt(i) + "--" + distinct + " ");
		        distinct = 0;
		    }
		    System.out.println("------------------------");
		    
		    for (int i = 0; i < drugoIme.length(); i++) {

		        for (int j = 0; j < drugoIme.length(); j++) {

		            if(drugoIme.charAt(i)==drugoIme.charAt(j))
		            {
		                distinct++;

		            }
		        }   
		        System.out.println(drugoIme.charAt(i) + "--" + distinct + " ");
		        distinct = 0;
		    }
		    
		    System.out.println("------------------------");
		    String h = prvoIme+drugoIme;
		    for (int i = 0; i < h.length(); i++) {

		        for (int j = 0; j < h.length(); j++) {

		            if(h.charAt(i)==h.charAt(j))
		            {
		                distinct++;

		            }
		        }
		        System.out.println(h.charAt(i) + "--" + distinct + " ");
		        distinct = 0;
		    }
		    System.out.println("------------------------");
		    for (int i = 0; i < h.length(); i++) {

		        for (int j = 0; j < h.length(); j++) {

		            if(h.charAt(i)==h.charAt(j))
		            {
		                distinct++;

		            }
		        }
		        System.out.print(distinct + " ");
		        distinct = 0;
		    }
		    
	}

}

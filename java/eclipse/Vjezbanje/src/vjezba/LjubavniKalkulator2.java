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
		    int count = 0 ;
		    
		    String h = prvoIme+drugoIme;
		    System.out.println("------------------------");
		    for (int i = 0; i < h.length(); i++) {

		        for (int j = 0; j < h.length(); j++) {

		            if(h.charAt(i)==h.charAt(j))
		            {
		                count++;

		            }
		        }
		        System.out.print(count + " ");
		        count = 0;
		    }
		    
	}

}

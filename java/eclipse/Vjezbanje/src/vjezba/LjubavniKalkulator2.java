package vjezba;

import java.util.Arrays;

import javax.swing.JOptionPane;

public class LjubavniKalkulator2 {
	
	public static void main(String[] args) {
		
		String prvoIme = JOptionPane.showInputDialog("Prvo ime: ");
		String prvoImeLowerCase = prvoIme.toLowerCase();
		System.out.print("   ");
	    System.out.print(prvoImeLowerCase);
	    
	    String drugoIme = JOptionPane.showInputDialog("Drugo ime: ");
	    String drugoImeLowerCase = drugoIme.toLowerCase();
	    System.out.print("           ");
	    System.out.print(drugoImeLowerCase);
	    System.out.println();
	    
		    int count = 0 ;
		    String h = prvoImeLowerCase+drugoImeLowerCase;
		    System.out.println("--------------------------------");
		    
		    
		    int[] niz = new int[h.length()];

			for (int i = 0; i < h.length(); i++) {
				count = 0;
				for (int j = 0; j < h.length(); j++) {
					if (h.charAt(i) == h.charAt(j)) {
						count++;
					}
				}
				niz[i] = count;
				System.out.print(count + "  ");
			}
			count = 0;
			System.out.println();
			System.out.print("   ");
				
			
			int[] x = new int [h.length()/2];
			if(h.length() % 2 == 0) {
				for (int i = 0; i < h.length() / 2; i++) {
					int firstNumber = niz[i];
					int secondNumber = niz[h.length() - 1 - i];
					int sum = firstNumber + secondNumber;
					System.out.print("  " + sum + " ");
					System.out.print("");
					x[i]=sum;
				}
			} else {
				for (int i = 0; i < h.length() / 2; i++) {
					int firstNumber = niz[i];
					int secondNumber = niz[h.length() - 1 - i];
					int sum = firstNumber + secondNumber;
					System.out.print(sum + " ");
			}
				int mid = niz[h.length() / 2];
				System.out.print(mid);
				System.out.print("");
			}
			
			System.out.println();
			System.out.print("      ");
			int[] y = new int [h.length()/2];
			for(int i = 0; i < x.length/2 ; i++) 
		    {  
		        int firstNumber = x[i];
		        int secondNumber = x[x.length - 1 - i];
		        int sum = firstNumber + secondNumber;
		        System.out.print("  " + sum + " ");
		        int mid = x[x.length-2-i];
		        if(x.length % 2 == 0) {
					System.out.print("");
					}else {
						System.out.print("");
					}
				if (x.length % 2 != 0) {
					if ( i == (x.length/2)-1) {
						System.out.println("  " + mid);
						}
				}
		  }
	 }
}


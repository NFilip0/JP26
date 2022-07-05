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
			int [] x = new int[h.length()/2];
			for(int i = 0; i < niz.length /2 ; i++) 
		    {  
		        int firstNumber = niz[i];
		        int secondNumber = niz[niz.length - 1 - i];
		        int sum = firstNumber + secondNumber;
		        System.out.print("  " + sum + " ");
		        int mid = niz[niz.length - 1 - i];
				if(niz.length % 2 == 0) {
					System.out.print("");
					}else {
						System.out.print("");
					}
				if (niz.length % 2 != 0) {
					if ( i == (niz.length/2)-1) {
						System.out.println("  " + mid);
					}
				}
					
		        x[i] = sum;
		    }
			/*int [] y = new int[h.length()/2];
			System.out.println();
			System.out.print("       ");
	        for(int i = 0; i < x.length /2 ; i++) 
		    {  
		        int firstNumber = x[i];
		        int secondNumber = x[x.length - 1 - i];
		        int sum = firstNumber + secondNumber;
		        System.out.print("  " + sum + " ");
				if(x.length % 2 == 0) {
					System.out.print("");
					}else {
						System.out.print("");
					}
				if (x.length % 2 != 0) {
					if ( i == (x.length/2)-1) {
						int mid = (x.length/2)+1;
						System.out.println("  " + mid);
					}
				}
				y[i] = sum;
		    }	
	        System.out.println();
	        System.out.print("       ");
	        for(int i = 0; i < y.length /2 ; i++) 
		    {  
		        int firstNumber = y[i];
		        int secondNumber = y[y.length - 1 - i];
		        int sum = firstNumber + secondNumber;
		        System.out.print("  " + sum + " ");
				if(y.length % 2 == 0) {
					System.out.print("");
					}else {
						System.out.print("");
					}
				if (y.length % 2 != 0) {
					if ( i == (y.length/2)-1) {
						int mid = (y.length/2)+1;
						System.out.println("  " + mid);
					}
				}

		    }*/	
	        
	        
	  }

}


package edunova;

import javax.swing.JOptionPane;

public class Z02 {
	
	// Za uneseni dvoznamenkasti broj
	// ispišite jediničnu vrijednost
	
	public static void main(String[] args) {
		
		int Broj = Integer.parseInt(
				JOptionPane.showInputDialog("Unesi broj")
				);
		int rez = Broj % 10;
		
		System.out.println(rez);
		
	}

}

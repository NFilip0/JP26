package edunova;

import javax.swing.JOptionPane;

public class Z02 {
	
	// Za uneseni dvoznamenkasti broj
	// ispišite jediničnu vrijednost
	
	public static void main(String[] args) {
		
		int i = Integer.parseInt(
				JOptionPane.showInputDialog("Unesi dvoznamenkasti broj")
				);
		i %= 10;
		
		System.out.println(i);

		int j = Integer.parseInt(
				JOptionPane.showInputDialog("Unesi dvoznamenkasti broj")
				);
		j /= 10;

		System.out.println(i);
		
	}

}

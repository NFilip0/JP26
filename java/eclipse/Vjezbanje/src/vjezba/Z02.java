package vjezba;

import javax.swing.JOptionPane;

public class Z02 {

	public static void main(String[] args) {
		
		// Učitati dva cijela broja a zatim ispisati manji pa veći broj.
		
		int x = Integer.parseInt(JOptionPane.showInputDialog("Unesi x"));
		int y = Integer.parseInt(JOptionPane.showInputDialog("Unesi y"));
		
		System.out.println("Od dva upisana, ispisati manji pa veci broj");
		System.out.println("Dva broja: "+ x + " , " + y + " ");
		
		if (x < y) {
			System.out.println("Manji: " + x + " " + "Veći: " + y);
		}
		else {
			System.out.println("Manji: " + y + " " + "Veći: " + x);
		}

	}

}

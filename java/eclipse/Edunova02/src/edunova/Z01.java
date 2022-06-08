package edunova;

import javax.swing.JOptionPane;

public class Z01 {
	
	// napisati program koji unosi tri
	// decimalna broja i ispisuje
	// produkt prvog i trećeg umanjeno
	// za drugi broj
	
	public static void main(String[] args) {
		
		double prviBroj = Double.parseDouble(JOptionPane.showInputDialog("Unesi prvi broj")
				);
		
		double drugiBroj = Double.parseDouble(JOptionPane.showInputDialog("Unesi drugi broj")
				);
		
		double treciBroj = Double.parseDouble(JOptionPane.showInputDialog("Unesi treci broj")
				);
		
		double rezultat = prviBroj * treciBroj;
		double i = rezultat - drugiBroj;
		
		System.out.println(i);

	}

}

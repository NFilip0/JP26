package edunova;

import javax.swing.JOptionPane;

public class Z03 {
	
	// za unesena dva cijela broja
	// ispišite rezultat djeljenja
	
	public static void main(String[] args) {
		
		double prviBroj = Double.parseDouble(
				JOptionPane.showInputDialog("Unesi prvi broj")
				);
		double drugiBroj = Double.parseDouble(
				JOptionPane.showInputDialog("Unesi drugi broj")
				);
		
		double rez = prviBroj / drugiBroj;
		System.out.println(rez);
	}

}

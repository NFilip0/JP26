package edunova;

import javax.swing.JOptionPane;

public class Z03 {
	
	// za unesena dva cijela broja
	// ispišite rezultat djeljenja
	
	public static void main(String[] args) {
		
		Integer prviBroj = Integer.parseInt(
				JOptionPane.showInputDialog("Unesi prvi broj")
				);
		Integer drugiBroj = Integer.parseInt(
				JOptionPane.showInputDialog("Unesi drugi broj")
				);
		float rez;
		rez = (float) prviBroj / drugiBroj;
		System.out.println(rez);
	}

}

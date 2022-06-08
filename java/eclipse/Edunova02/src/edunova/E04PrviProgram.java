package edunova;

import javax.swing.JOptionPane;

public class E04PrviProgram {

	public static void main(String[] args) {
		
		// Prije korištenja JOptionPane
		// u module info treba dodat requires java.desktop
		
		String unosOdKorisnika = 
				JOptionPane.showInputDialog("Unesi broj");
		
		int b = Integer.parseInt(unosOdKorisnika);
		
		System.out.println(b);
		

	}

}

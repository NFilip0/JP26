package edunova;

import javax.swing.JOptionPane;

public class Zadatak06 {

	public static void main(String[] args) {
		
		// program unosi 2 broja
		// ako su oba broja parni
		// ispisuje njihov zbroj
		// inače ispisuje njihovu razliku
		
		double prviBroj = Double.parseDouble(JOptionPane.showInputDialog("Unesi prvi broj")
				);
		
		double drugiBroj = Double.parseDouble(JOptionPane.showInputDialog("Unesi drugi broj")
				);
		
		if ((prviBroj % 2 == 0) && ( drugiBroj % 2 == 0)) {
			System.out.println(prviBroj + drugiBroj);
		}else if ( prviBroj % 2 != 0 && drugiBroj % 2 != 0)  {
			System.out.println(prviBroj - drugiBroj);
		}else {
			System.out.println("Neispravan unos");
		}

	}

}

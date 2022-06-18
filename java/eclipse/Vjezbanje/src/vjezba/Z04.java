package vjezba;

import javax.swing.JOptionPane;

public class Z04 {

	public static void main(String[] args) {
		
		// Učitati dva broja. Ako su oba veća od nule ispisati oba veća.
		
		int x = Integer.parseInt(JOptionPane.showInputDialog("Unesi x"));
		int y = Integer.parseInt(JOptionPane.showInputDialog("Unesi y"));
		
		if ((x > 0) & (y > 0)) {
			System.out.println("Oba veća");
		}else {
			System.out.println("Jedan ili oba broja su manji ili jednaki nuli");
		}

	}

}

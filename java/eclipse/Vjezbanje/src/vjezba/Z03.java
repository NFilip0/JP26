package vjezba;

import javax.swing.JOptionPane;

public class Z03 {

	public static void main(String[] args) {
		
		// 	Napisati program da provjeri da li je upisani broj pozitivan, negativan ili nula i to ispiše.
		
		int x = Integer.parseInt(JOptionPane.showInputDialog("Unesi broj"));
		
		if (x > 0 ) {
			System.out.println("Broj je pozitivan");
		}
		else {
			if (x < 0 ) {
				System.out.println("Broj je negativan");
			}
			else {
				System.out.println("Broj je nula");
			}
		}
	}
}

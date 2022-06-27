package edunova;

import javax.swing.JOptionPane;

public class Zadatak02 {

	public static void main(String[] args) {
		
		// program od korisnika unosi
		// cijele brojeve dok korisnik
		// ne unese broj -1
		// program ispisuje sumu svih
		// unesenih brojeva
		
		int suma = 0;
		int i=0;
		
		System.out.println(suma);
		while (i!=-1) {
			i=Integer.parseInt(JOptionPane
					.showInputDialog("Daj broj"));
			suma+=i;
		}
		System.out.println(suma+1);
	}

}

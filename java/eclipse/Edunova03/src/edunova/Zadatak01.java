package edunova;

import javax.swing.JOptionPane;

public class Zadatak01 {

	public static void main(String[] args) {
		
		// Za dva unesena cijela broja
		// program ispisuje Osijek
		// ako je broj veći od 10
		// inače ispisuje Edunova
		
		int i = Integer.parseInt(
				JOptionPane.showInputDialog("Unesi prvi cijeli broj")
				);
		
		int j = Integer.parseInt(
				JOptionPane.showInputDialog("Unesi drugi cijeli broj")
				);
		
		int rez = i + j;
		
		if(rez > 10) {
			System.out.println("Osijek");
		}else {
			System.out.println("Edunova");
		}

	}

}
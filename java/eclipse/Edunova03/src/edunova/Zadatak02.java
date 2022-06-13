package edunova;

import javax.swing.JOptionPane;

public class Zadatak02 {

	public static void main(String[] args) {
		
		// za upisani cijeli broj
		// program ispisuje da li je
		// parni broj ili ne
		
		int i = Integer.parseInt(
				JOptionPane.showInputDialog("Unesi cijeli broj")
				);
		if(i%2 == 0) {
			System.out.println("Parni");
	}else {
		System.out.println("Neparan");
		}
	}
}

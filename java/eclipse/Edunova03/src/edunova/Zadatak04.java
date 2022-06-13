package edunova;

import javax.swing.JOptionPane;

public class Zadatak04 {

	public static void main(String[] args) {
		
		// za upisana 3 cijela broja
		// program ispisuje najveći
		
		int i = Integer.parseInt(
				JOptionPane.showInputDialog("Unesi prvi broj")
				);
		int j = Integer.parseInt(
				JOptionPane.showInputDialog("Unesi drugi broj")
				);
		int k = Integer.parseInt(
				JOptionPane.showInputDialog("Unesi treci broj")
				);
		
		if((i>j) && (i>j)) {
			System.out.println(i);
		}else if (j > k) {
			System.out.println(j);
		}else {
			System.out.println(k);
		}
		
		// rijesit jos sa inline
		System.out.println(((i > j) && (i > k) ? i : (j > k? j : k)));
	}
}
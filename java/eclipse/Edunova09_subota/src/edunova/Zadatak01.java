package edunova;

import javax.swing.JOptionPane;

public class Zadatak01 {
	
	// za unesena dva broja program ispuje sumu svih brojeva izmedu njih
	
	public static void main(String[] args) {
		
		int x = Integer.parseInt(JOptionPane.showInputDialog("Unesi prvi broj: "));
		int y = Integer.parseInt(JOptionPane.showInputDialog("Unesi drugi broj: "));
		
		int sum = 0;
		
		for (int i = x >= y ? y : x; i <= (y >= x ? y : x);i++ ) {
			sum+=i;
		}
		System.out.println(sum);
		
	}

}

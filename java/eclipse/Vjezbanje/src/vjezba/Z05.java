package vjezba;

import javax.swing.JOptionPane;

public class Z05 {

	public static void main(String[] args) {
		
		// Od tri upisana broja (x, y, z) sa tastature naći najveći.
		
		int x = Integer.parseInt(JOptionPane.showInputDialog("Unesi x"));
		int y = Integer.parseInt(JOptionPane.showInputDialog("Unesi y"));
		int z = Integer.parseInt(JOptionPane.showInputDialog("Unesi z"));
		
		int max = x;
		
		if (y>max) {
			max = y;
		} 
		if (z>max){
			max = z;
		}
		
		System.out.println("Najveci broj je: " + max);
		
	}

}

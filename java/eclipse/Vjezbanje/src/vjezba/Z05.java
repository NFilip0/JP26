package vjezba;

import javax.swing.JOptionPane;

public class Z05 {

	public static void main(String[] args) {
		
		// Od tri upisana broja (a, b, c) sa tastature naći najveći.
		
		int x = Integer.parseInt(JOptionPane.showInputDialog("Unesi a"));
		int y = Integer.parseInt(JOptionPane.showInputDialog("Unesi b"));
		int z = Integer.parseInt(JOptionPane.showInputDialog("Unesi c"));
		
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

package vjezba;

import javax.swing.JOptionPane;

public class Z11 {

	public static void main(String[] args) {
		
		// Napisati program da ispisuje n puta u n reda IME sa razmakom.
		
		int n= Integer.parseInt(JOptionPane.showInputDialog("Unesi broj"));
		
		for(int i=1;i<=n;i++) {
			for(int j=1;j<=n;j++) {
				System.out.print("Filip  ");
			}
			System.out.println();
		}

	}

}

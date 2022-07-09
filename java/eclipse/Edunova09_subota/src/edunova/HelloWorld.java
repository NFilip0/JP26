package edunova;

import javax.swing.JOptionPane;

public class HelloWorld {
	
	// Program ispisuje uneseno ime
	
	public static void main(String[] args) {
		
		String ime;
		
		while(true) {
			
			ime = JOptionPane.showInputDialog("Unesi ime: ");
			
			if (ime.trim().equals("")) {
				JOptionPane.showMessageDialog(null, "Molim unesite ime: ");
			}else {
				break;
			}
		}
		
		System.out.println(ime);
	}

}

package edunova;

import javax.swing.JOptionPane;

public class Zadatak03 {
	
	// program ucitava dva broja
	// ispisuje zbroj dvaju ucitanih brojva
	// kreirati metode: ucitaj,izracunaj,ispisi
	
	public static void main(String[] args) {
		ispisi(izracunaj(ucitaj("Prvi"),ucitaj("Drugi")));
	}
	
	static int ucitaj(String poruka) {
		return 
				Integer.parseInt(JOptionPane.showInputDialog(poruka));
	}
	
	static int izracunaj( int x, int y) {
		return x+y;
	}
	
	static void ispisi (int y) {
		System.out.println(y);
	}
		
}

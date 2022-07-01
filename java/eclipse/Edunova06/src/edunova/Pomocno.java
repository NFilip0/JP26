package edunova;

import javax.swing.JOptionPane;

public class Pomocno {
	
	/**
	 * Metoda osigurava unos cijelog broja
	 * koji može biti u cijelom rasponu
	 * int tip podatka
	 * @param poruka Koja se prikazuje korisniku
	 * @return Učitani cijeli broj
	 */
	
	static int ucitajInt(String poruka) {
		while(true) {
			try {
				return Integer.parseInt(JOptionPane.showInputDialog(poruka));
			} catch (Exception e) {
				JOptionPane.showMessageDialog(null, "Niste unijeli cijeli broj");
			}
		}
	}
	
	static int ucitajInt(String poruka, boolean pozitivni) {
		int i = ucitajInt(poruka);
		if(!pozitivni) {
			return i;
		}
		while(true) {
			if(i<0) {
				JOptionPane.showMessageDialog(null, "Učitani broj mora biti pozitivan");
				i=ucitajInt(poruka);
				continue;
			}
			return i;
		}
	}
	
	/**
	 * https://stackoverflow.com/questions/363681/how-do-i-generate-random-integers-within-a-specific-range-in-java
	 * @param min
	 * @param max
	 * @return
	 */
	static int slucajniBroj (int min,  int max ) {
		return min + (int)(Math.random()* ((max - min) + 1));
	}
}

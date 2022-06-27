package edunova;

import javax.swing.JOptionPane;

public class Zadatak04 {
	
	public static void main(String[] args) {
		
		// za upisani cjeli broj
		// ispisi zbroj svih znamenki
		
		// ulaz: 263736
		// izlaz: 27
		
		// ulaz: 26
		// izlaz: 8
		
		int broj = Integer.parseInt(JOptionPane.showInputDialog("Broj"));
		//System.out.println(broj%10);
		int suma = 0;
		while(broj>0) {
			suma+=broj%10;
			//suma = suma+(broj%10);
			broj/=10;
			//broj = broj/10
		}
		System.out.println(suma);
		
	}

}

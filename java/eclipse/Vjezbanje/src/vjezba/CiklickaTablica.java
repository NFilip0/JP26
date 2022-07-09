package vjezba;

import javax.swing.JOptionPane;

public class CiklickaTablica {
	
	public static void main(String[] args) {
		// red -- x
		// stupac -- y
		
		int x = Integer.parseInt(JOptionPane.showInputDialog("Unesi broj redova"));
		int y = Integer.parseInt(JOptionPane.showInputDialog("Unesi broj stupaca"));
		
		int umnozak = x * y;
		int[][] matrica = new int[x][y];
		
		int pb = 1; // pocetni broj
		int trenutnaGranicaLijevo  = 0;
		int trenutnaGranicaGore  = 0;
		
		int trenutniRed = x - 1;
		int trenutniStupac = y - 1;
		
		int trenutnaGranicaDesno = y - 1;
		int trenutnaGranicaDolje = x - 2;
		char smjer = 'L';
		// smjerovi su L-left, R-right, U-up, D-down
		
		// ako unesemo 4x4, umnozak postaje 16
		while (umnozak > 0) {
			matrica[trenutniRed][trenutniStupac] = pb; // određuje da ce broj 1 biti u 4 redu i 4 stupcu
			umnozak--; // umnozak se smanjuje dok ne bude ispisano 16 brojeva
			pb++;

			if (smjer == 'L') { // pocetni smjer je zadan u lijevu stranu
				if (trenutniStupac == trenutnaGranicaLijevo) { // provjerava je li pozicija trenutna dosla do kraja smjera
					smjer = 'U'; // ukoliko je doslo do granice smjer postaje "U" to jest gore
					trenutniRed--;
				} else {
					trenutniStupac--; // ukoliko nije pomice se za jedno mjesto lijevo
				}
				
			} else if (smjer == 'U') { // provjerava je li smjer postao "U"
				if (trenutniRed == trenutnaGranicaGore) { // ukoliko je trenutni red dosao do kraja smjera U, smjer postaje "R" odnosno desno
					smjer = 'R';
					trenutniStupac++;
				} else {
					trenutniRed--;
				}

			} else if (smjer == 'R') {
				if (trenutniStupac == trenutnaGranicaDesno) {
					smjer = 'D';
					trenutniRed++;
				} else {
					trenutniStupac++;
				}

			} else if (smjer == 'D') {
				if (trenutniRed == trenutnaGranicaDolje ) {
					smjer = 'L';
					trenutniStupac--;

					trenutnaGranicaLijevo++;
					trenutnaGranicaGore++;
					trenutnaGranicaDesno--;
					trenutnaGranicaDolje--;
				} else {
					trenutniRed++;
				}

			}
		}
		for (int i = 0; i < matrica.length; i++) {
			for (int j = 0; j < matrica[i].length; j++) {

				System.out.printf("%4d", matrica[i][j]);
			}
			System.out.println();
		}
	
	}
}

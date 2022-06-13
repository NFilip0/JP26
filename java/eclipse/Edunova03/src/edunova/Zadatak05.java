package edunova;

import javax.swing.JOptionPane;

public class Zadatak05 {

	public static void main(String[] args) {
		
		// program unosi broj između
		// 1 i 999 u slučaju da je
		// izvan tog raspona ispisati
		// gresku i prekinuti program
		// program ispisuje 1 znamenku upisanog broja
		
		int Broj = Integer.parseInt(JOptionPane.showInputDialog("Unesi broj")
				);
		
		if(Broj < 0 || Broj > 999) {
			System.out.println("Greška");
		}else if ( Broj >= 1 && Broj <= 9) {
			System.out.println(Broj);
			System.out.println(Broj /= 1);
		}else if ( Broj >= 10 && Broj <= 99) {
			System.out.println(Broj);
			System.out.println(Broj /= 10);
		}else if ( Broj >= 100 && Broj <=999) {
			System.out.println(Broj);
			System.out.println(Broj /= 100);
		}
	}
}

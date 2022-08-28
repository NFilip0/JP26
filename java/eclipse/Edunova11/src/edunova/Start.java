package edunova;

import java.util.Scanner;

import edunova.util.Pomocno;

public class Start {
	
	public Start() {
		Pomocno.ulaz = new Scanner(System.in);
		System.out.println("***** Edunova konzolna aplikacija V1 *****");
		izbornik();
		Pomocno.ulaz.close();
			
	}
	
	
	private void pokreniProgram() {
		
		switch (Pomocno.ucitajInt("Odaberi program", 1, 5)) {
		case 1:
			smjerovi();
			break;
		case 2:
			grupe();
			break;
		case 3:
			polaznici();
			break;
		case 4:
			predavaci();
			break;
		case 5:
			System.out.println("Doviđenja");
		}
		
		
	}

	private void predavaci() {
		System.out.println("Dođe izbornik za predavače");
		// za sada
		izbornik();
		
	}


	private void polaznici() {
		System.out.println("Dođe izbornik za polaznike");
		// za sada
		izbornik();
		
	}


	private void grupe() {
		System.out.println("Dođe izbornik za grupe");
		// za sada
		izbornik();
		
	}


	private void smjerovi() {
		System.out.println("Dođe izbornik za smjerove");
		// za sada
		izbornik();
		
	}


	private void izbornik() {
		
		System.out.println("");
		System.out.println("Glavni izbornik");
		System.out.println("1. Smejerovi");
		System.out.println("2. Grupa");
		System.out.println("3. Polaznici");
		System.out.println("4. Predavači");
		System.out.println("5. Izlaz");
		System.out.println("");
		pokreniProgram();
	}
	
	public static void main(String[] args) {
		
		new Start();

	}

}

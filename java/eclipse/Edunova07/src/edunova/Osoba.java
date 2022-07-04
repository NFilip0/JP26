package edunova;

// 1. princip OOP-a Klasa/objekt
// Klasa je opisnik objekta
public class Osoba {
	
	// int sifra; OVO SE NE RADI
	
	// 2. princip OOP-a Učahurivanje
	
	// načini pristupa
	// package scope (bez navođenja načina)
	// class scope (private)
	// class scope (protected) - nasljeđivanje
	// vidljivo svima (public)
	
	// Klasa sakrije svoja svojstva
	private int sifra;
	
	// i učini ih dostupnim putem
	// tkz. geter i seter metoda
	
	public int getSifra() {
		return sifra;
	}

	public void setSifra(int sifra) {
		this.sifra = sifra;
	}

}

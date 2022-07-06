package edunova;

import edunova.klase.Osoba;
import edunova.klase.Pravokutnik;
import edunova.klase.Polaznik;
import edunova.klase.Predavac;

public class Start {
	
	public static void main(String[] args) {
		// deklaracija
		Pravokutnik p;
		// instanciranje - pozivanje posebne metode konstruktor
		p = new Pravokutnik(20,10);
		//p.setSirina(20);
		//p.setVisina(10);
		
		// ovo se ne radi
		System.out.println(p.getVisina()*p.getSirina());
		
		System.out.println(p.povrsina());
		/*
		Osoba o = new Osoba(); // prazan konstrukor
		o.setIme("Pero");
		o.setPrezime("Perić");
		
		o = new Osoba("Maja", "Majić"); // puni konstruktor
		*/
		Polaznik polaznik = new Polaznik();
		
		Predavac predavac = new Predavac();
		
		// tekstualni reprezentat objekta
		
		p = new Pravokutnik(5,5);
		
		System.out.println(p);
		// edunova.klase.Pravokutnik@6a5fc7f7
		
		Pravokutnik drugi = new Pravokutnik(5,5);
		
		System.out.println(p.equals(drugi));
		System.out.println(p.hashCode());
		System.out.println(drugi.hashCode());
		
		polaznik = new Polaznik("Pero", "Perić","2022/12");
		predavac = new Predavac("Maja", "Majić","HR263263");
		System.out.println(polaznik);
		System.out.println(predavac);
		

	}

}

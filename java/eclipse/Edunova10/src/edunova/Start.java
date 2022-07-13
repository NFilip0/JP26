package edunova;

import java.math.BigDecimal;

import edunova.model.Osoba;
import edunova.model.Polaznik;
import edunova.model.Predavac;

public class Start {
	
	public Start() {
		Osoba[] osobe = new Osoba[4];
		osobe[0] = new Predavac ( 1,"Ana","Zimska",new BigDecimal(100),new BigDecimal(50));
		osobe[1] = new Polaznik(1,"Matija","Cvek",new BigDecimal(10),new BigDecimal(20),new BigDecimal(10));
		osobe[2] = new Polaznik(2,"Karla","Cvek",new BigDecimal(20),new BigDecimal(40),new BigDecimal(20));
		osobe[3] = new Predavac (1,"Pavle","Vidaković",new BigDecimal(100),new BigDecimal(50));
		
		ispisiCijene(osobe);
	}
	
	private void ispisiCijene(Osoba[] osobe) {
		BigDecimal ukupno = BigDecimal.ZERO;
		for (Osoba o : osobe) {
			System.out.println(
			o.getIme()+" " + o.getPrezime() + ": " +
			o.getUkupno()); // polimorfizam - višeobličje
			ukupno = ukupno.add(o.getUkupno());
		}
		System.out.println("Ukupno: " + ukupno);
	}
	
	
	public static void main(String[] args) {
		new Start();
	}

}

package edunovaeclipse.util;

import java.util.List;

import edunovaeclipse.model.Smjer;

public class SmjerCRUD {
	
	public static Smjer unosNovog() {
		Smjer s = new Smjer();
		s.setSifra(Pomocno.ucitajInt("Unesite šifru smjera (pozitivni broj)", true));
		s.setNaziv(Pomocno.ucitajString("Unesi naziv smjera"));
		//ostalo dz
		return s;
	}
	
	public static void ispis(List<Smjer> smjerovi) {
		int rb=1;
		System.out.println("");
		System.out.println("Smjerovi u aplikaciji");
		for (Smjer s : smjerovi) {
			System.out.println(rb++ +". " + s.getNaziv());
		}
		System.out.println("----------");
	}
	
	public static void promjena(Smjer s) {
		s.setSifra(Pomocno.ucitajInt("šifra ("+ s.getSifra() + ")", true));
		
		s.setNaziv(Pomocno.ucitajString("naziv ( " + s.getNaziv() + ")" ));
		// ostalo dz
	}

}

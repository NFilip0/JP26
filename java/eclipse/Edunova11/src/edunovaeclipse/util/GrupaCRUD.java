package edunovaeclipse.util;

import java.util.List;

import edunovaeclipse.model.Clan;
import edunovaeclipse.model.Grupa;
import edunovaeclipse.model.Polaznik;
import edunovaeclipse.model.Predavac;
import edunovaeclipse.model.Smjer;

public class GrupaCRUD {
	
	public static Grupa unosNove(
			List<Smjer> smjerovi,
			List<Predavac> predavaci,
			List<Polaznik> polaznici)
	{
		Grupa g = new Grupa();
		//šifra dz
		g.setNaziv(Pomocno.ucitajString("Unesi naziv grupe"));
		System.out.println("Popis smjerova u aplikaciji");
		SmjerCRUD.ispis(smjerovi);
		g.setSmjer(smjerovi.get(Pomocno.ucitajInt("Odaberi smjer", 1, smjerovi.size())-1));
		
		//dz postaviti predavaca,datum pocetka i maskimalno polaznika
		
		dodajPolaznikeNaGrupu(g, polaznici);

		return g;
	}
	
	private static void dodajPolaznikeNaGrupu(Grupa g,
			List<Polaznik> polaznici) {
		while (true) {
			if (Pomocno.ucitajInt("1 za dodavanje polaznika, 0 NE") == 0) {
				break;
			}

			PolaznikCRUD.ispis(polaznici);
			Clan c = new Clan();
			c.setGrupa(g);
			c.setPolaznik(polaznici.get(Pomocno.ucitajInt("Odaberi polaznika", 1, polaznici.size()) - 1));
			g.getClanovi().add(c);

		}
	}
	
	public static void ispis(List<Grupa> grupe) {
		int rb = 1;
		System.out.println("");
		System.out.println("Grupe u aplikaciji");
		for (Grupa g : grupe) {
			System.out.println(rb++ + ". " + g.getNaziv() + " (" + g.getSmjer().getNaziv() + ")");
			for (Clan c : g.getClanovi()) {
				System.out.println("\t" + c.getPolaznik().getIme() + " " + c.getPolaznik().getPrezime());
			}
		}
		System.out.println("----------");
	}
	
	public static void promjena(Grupa g, List<Smjer> smjerovi, List<Predavac> predavaci, List<Polaznik> polaznici) {
		String s = Pomocno.ucitajString("Naziv (" + g.getNaziv() + ")", true);
		if (s.trim().length() != 0) {
			g.setNaziv(s);
		}

		// predavača i ostalo za DZ
		while (g.getClanovi().size() > 0) {

			System.out.println("Brisanje polaznika na grupi");
			int rb = 1;
			for (Clan c : g.getClanovi()) {
				System.out.println(rb++ + ". " + c.getPolaznik().getIme() + " " + c.getPolaznik().getPrezime());
			}
			System.out.println("----------");
			int b = Pomocno.ucitajInt("redni broj za brisanje 0 nemoj brisati", 0, g.getClanovi().size());
			if (b == 0) {
				break;
			} else {
				g.getClanovi().remove(b-1);
			}

		}
		
		dodajPolaznikeNaGrupu(g, polaznici);

	}

}

package edunovaeclipse.util;

import java.util.List;

import edunovaeclipse.model.Polaznik;

public class PolaznikCRUD {
	
	public static void ispis(List<Polaznik> polaznici) {
		int rb=1;
		System.out.println("");
		System.out.println("Polaznici u aplikaciji");
		for (Polaznik p : polaznici) {
			System.out.println(rb++ +". " + p.getIme()+ " " + p.getPrezime());
		}
		System.out.println("----------");
	}

}

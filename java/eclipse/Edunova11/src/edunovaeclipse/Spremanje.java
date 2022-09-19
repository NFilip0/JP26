package edunovaeclipse;

import java.util.List;

import edunovaeclipse.model.Grupa;
import edunovaeclipse.model.Polaznik;
import edunovaeclipse.model.Predavac;
import edunovaeclipse.model.Smjer;

public class Spremanje{
	private List<Smjer> smjerovi;
	private List<Polaznik> polaznici;
	private List<Predavac> predavaci;
	private List<Grupa> grupe;
	
	

	public List<Smjer> getSmjerovi() {
		return smjerovi;
	}
	public void setSmjerovi(List<Smjer> smjerovi) {
		this.smjerovi = smjerovi;
	}
	public List<Polaznik> getPolaznici() {
		return polaznici;
	}
	public void setPolaznici(List<Polaznik> polaznici) {
		this.polaznici = polaznici;
	}
	public List<Predavac> getPredavaci() {
		return predavaci;
	}
	public void setPredavaci(List<Predavac> predavaci) {
		this.predavaci = predavaci;
	}
	public List<Grupa> getGrupe() {
		return grupe;
	}
	public void setGrupe(List<Grupa> grupe) {
		this.grupe = grupe;
	} 
	
	
	
}
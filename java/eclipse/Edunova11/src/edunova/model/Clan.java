package edunova.model;

public class Clan extends Entitet{
	
	private Grupa grupa;
	private Polaznik polaznik;
	
	public Grupa getGrupa() {
		return grupa;
	}
	public void setGrupa(Grupa grupa) {
		this.grupa = grupa;
	}
	public Polaznik getPolaznik() {
		return polaznik;
	}
	public void setPolaznik(Polaznik polaznik) {
		this.polaznik = polaznik;
	}

}

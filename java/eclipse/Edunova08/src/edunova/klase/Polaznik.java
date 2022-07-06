package edunova.klase;

public class Polaznik extends Osoba {
	
	private String brojUgovora;

	public String getBrojUgovora() {
		return brojUgovora;
	}

	public Polaznik() {
		super(); // poziva se konsturkor klase Osoba jer polaznik nasljeđuje klasu Osoba
	}
	

	public Polaznik(String ime, String prezime, String brojUgovora) {
		super(ime, prezime);
		this.brojUgovora = brojUgovora;
	}

	public void setBrojUgovora(String brojUgovora) {
		this.brojUgovora = brojUgovora;
	}
	
	

}

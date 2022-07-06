package edunova.zadatak2;

public class Televizor extends Uredaj {
	
	private String vrstaPrikljucka;

	public Televizor(String proizvodac, String vrstaPrikljucka) {
		super(proizvodac);
		this.vrstaPrikljucka = vrstaPrikljucka;
	}

	public Televizor() {
		super();
	}

	public String getVrstaPrikljucka() {
		return vrstaPrikljucka;
	}

	public void setVrstaPrikljucka(String vrstaPrikljucka) {
		this.vrstaPrikljucka = vrstaPrikljucka;
	}
	

}

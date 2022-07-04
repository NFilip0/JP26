package edunova.zadatak1;


public class Grupa {
	
	private String naziv;
	private int datumPocetka;
	private Predavac predavac;
	private Smjer smjer;

	public String getNaziv() {
		return naziv;
	}
	public void setNaziv(String naziv) {
		this.naziv = naziv;
	}
	public int getDatumPocetka() {
		return datumPocetka;
	}
	public void setDatumPocetka(int datumPocetka) {
		this.datumPocetka = datumPocetka;
	}
	public Predavac getPredavac() {
		return predavac;
	}
	public void setPredavac(Predavac predavac) {
		this.predavac = predavac;
	}
	public Smjer getSmjer() {
		return smjer;
	}
	public void setSmjer(Smjer smjer) {
		this.smjer = smjer;
	}

}

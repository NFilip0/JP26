package edunova.model;

import java.io.Serializable;
import java.math.BigDecimal;

public class Predavac extends Osoba implements Serializable{
	
	private BigDecimal kotizacija;
	private BigDecimal rucak;
	
	
	public Predavac(int sifra, String ime, String prezime, BigDecimal kotizacija, BigDecimal rucak) {
		super(sifra, ime, prezime);
		this.kotizacija = kotizacija;
		this.rucak = rucak;
	}
	public Predavac(BigDecimal kotizacija, BigDecimal rucak) {
		super();
		this.kotizacija = kotizacija;
		this.rucak = rucak;
	}
	public Predavac() {
		super();
	}
	public BigDecimal getKotizacija() {
		return kotizacija;
	}
	public void setKotizacija(BigDecimal kotizacija) {
		this.kotizacija = kotizacija;
	}
	public BigDecimal getRucak() {
		return rucak;
	}
	public void setRucak(BigDecimal rucak) {
		this.rucak = rucak;
	}
	@Override
	public BigDecimal getUkupno() {
		if(kotizacija==null && rucak==null) {
			return BigDecimal.ZERO;
		}
		if(kotizacija==null) {
			return rucak;
		}
		if(rucak==null) {
			return kotizacija;
		}
		return kotizacija.add(rucak);
	}
	

}

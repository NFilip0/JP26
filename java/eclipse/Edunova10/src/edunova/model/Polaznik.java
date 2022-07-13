package edunova.model;

import java.math.BigDecimal;

public class Polaznik extends Osoba {
	
	private BigDecimal naknada;
	private BigDecimal prijevoz;
	private BigDecimal ulaznica;
	
	public Polaznik(int sifra, String ime, String prezime, BigDecimal naknada, BigDecimal prijevoz,
			BigDecimal ulaznica) {
		super(sifra, ime, prezime);
		this.naknada = naknada;
		this.prijevoz = prijevoz;
		this.ulaznica = ulaznica;
	}
	public Polaznik() {
		super();
	}
	public BigDecimal getNaknada() {
		return naknada;
	}
	public void setNaknada(BigDecimal naknada) {
		this.naknada = naknada;
	}
	public BigDecimal getPrijevoz() {
		return prijevoz;
	}
	public void setPrijevoz(BigDecimal prijevoz) {
		this.prijevoz = prijevoz;
	}
	public BigDecimal getUlaznica() {
		return ulaznica;
	}
	public void setUlaznica(BigDecimal ulaznica) {
		this.ulaznica = ulaznica;
	}
	@Override
	public BigDecimal getUkupno() {
		return naknada.add(prijevoz).add(ulaznica);
	}

}

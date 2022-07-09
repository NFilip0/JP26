package edunova.zadatak5;

import java.util.Date;

public class Casopis extends Publikacija {
	
	private int brojCasopisa;
	private int godinaCasopisa;
	
	public Casopis() {
		super();
	}
	public Casopis(Date datumIzdavanja, int brojCasopisa, int godinaCasopisa) {
		super(datumIzdavanja);
		this.brojCasopisa = brojCasopisa;
		this.godinaCasopisa = godinaCasopisa;
	}
	public int getBrojCasopisa() {
		return brojCasopisa;
	}
	public void setBrojCasopisa(int brojCasopisa) {
		this.brojCasopisa = brojCasopisa;
	}
	public int getGodinaCasopisa() {
		return godinaCasopisa;
	}
	public void setGodinaCasopisa(int godinaCasopisa) {
		this.godinaCasopisa = godinaCasopisa;
	}

}

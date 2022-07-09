package edunova.zadatak5;

import java.util.Date;

public class Publikacija {
	
	private Date datumIzdavanja;

	public Publikacija(Date datumIzdavanja) {
		super();
		this.datumIzdavanja = datumIzdavanja;
	}

	public Publikacija() {
		super();
	}

	public Date getDatumIzdavanja() {
		return datumIzdavanja;
	}

	public void setDatumIzdavanja(Date datumIzdavanja) {
		this.datumIzdavanja = datumIzdavanja;
	}
	

}

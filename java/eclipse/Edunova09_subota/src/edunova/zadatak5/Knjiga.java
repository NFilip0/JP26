package edunova.zadatak5;

import java.util.Date;

public class Knjiga extends Publikacija {
	
	private int brojStranica;
	private Autor autor[];


	public Knjiga(Date datumIzdavanja, int brojStranica, Autor[] autor) {
		super(datumIzdavanja);
		this.brojStranica = brojStranica;
		this.autor = autor;
	}

	public Autor[] getAutor() {
		return autor;
	}

	public void setAutor(Autor[] autor) {
		this.autor = autor;
	}

	public Knjiga() {
		super();
	}

	public int getBrojStranica() {
		return brojStranica;
	}

	public void setBrojStranica(int brojStranica) {
		this.brojStranica = brojStranica;
	}

}

package edunova;

import java.util.Date;

public class Racunalo {
	
	public static final int STATUS_STARO=1;
	public static final int STATUS_NOVO=2;
	
	private int sifra;
	private String naziv;
	private Date datumNabave;
	private boolean ispravno;
	
	public int getSifra() {
		return sifra;
	}
	public void setSifra(int sifra) {
		this.sifra = sifra;
	}
	public String getNaziv() {
		return naziv;
	}
	public void setNaziv(String naziv) {
		this.naziv = naziv;
	}
	public Date getDatumNabave() {
		return datumNabave;
	}
	public void setDatumNabave(Date datumNabave) {
		this.datumNabave = datumNabave;
	}
	public boolean isIspravno() {
		return ispravno;
	}
	public void setIspravno(boolean ispravno) {
		this.ispravno = ispravno;
	}
	

}

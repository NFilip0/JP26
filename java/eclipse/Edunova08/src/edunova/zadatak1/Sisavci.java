package edunova.zadatak1;

public class Sisavci extends Toplokrvni {
	
	private int danaTrudnoce;

	public Sisavci(String naziv, double temperatura, int danaTrudnoce) {
		super(naziv, temperatura);
		this.danaTrudnoce = danaTrudnoce;
	}

	public Sisavci(int danaTrudnoce) {
		super();
		this.danaTrudnoce = danaTrudnoce;
	}

	public Sisavci(double temperatura) {
		super(temperatura);
	}

	public int getDanaTrudnoce() {
		return danaTrudnoce;
	}

	public void setDanaTrudnoce(int danaTrudnoce) {
		this.danaTrudnoce = danaTrudnoce;
	}
	
	

}

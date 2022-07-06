package edunova.zadatak2;

public class Racunalo extends Uredaj {
	
	private String vrstaDaljinskog;

	public Racunalo(String vrstaDaljinskog) {
		super();
		this.vrstaDaljinskog = vrstaDaljinskog;
	}

	public Racunalo(String proizvodac, String vrstaDaljinskog) {
		super(proizvodac);
		this.vrstaDaljinskog = vrstaDaljinskog;
	}

	public Racunalo() {
		super();
	}

	public String getVrstaDaljinskog() {
		return vrstaDaljinskog;
	}

	public void setVrstaDaljinskog(String vrstaDaljinskog) {
		this.vrstaDaljinskog = vrstaDaljinskog;
	}
	


}

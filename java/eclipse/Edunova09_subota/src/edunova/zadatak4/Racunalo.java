package edunova.zadatak4;

public class Racunalo {
	
	private String monitor;
	private int ram;
	private double cijena;
	private boolean ispravan;
	
	public Racunalo() {
		super();
	}
	public Racunalo(String monitor, int ram, double cijena, boolean ispravan) {
		super();
		this.monitor = monitor;
		this.ram = ram;
		this.cijena = cijena;
		this.ispravan = ispravan;
	}
	public String getMonitor() {
		return monitor;
	}
	public void setMonitor(String monitor) {
		this.monitor = monitor;
	}
	public int getRam() {
		return ram;
	}
	public void setRam(int ram) {
		this.ram = ram;
	}
	public double getCijena() {
		return cijena;
	}
	public void setCijena(double cijena) {
		this.cijena = cijena;
	}
	public boolean isIspravan() {
		return ispravan;
	}
	public void setIspravan(boolean ispravan) {
		this.ispravan = ispravan;
	}
	

}

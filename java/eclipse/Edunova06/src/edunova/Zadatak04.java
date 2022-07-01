package edunova;

public class Zadatak04 {
	
	// za dva ucitana broja ispisi manji
	
	public static void main(String[] args) {
		int a = Pomocno.ucitajInt("Prvi",true);
		int b = Pomocno.ucitajInt("Drugi");
		
		System.out.println(a>=b ? b : a);
	}

}

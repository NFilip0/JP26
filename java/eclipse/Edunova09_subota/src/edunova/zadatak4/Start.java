package edunova.zadatak4;

public class Start {
	
	public static void main(String[] args) {
		
		Racunalo racunalo = new Racunalo(null,0,200.00,true);
		
		// kreirati niz od 15 racunala i u njega postaviti 15 instanci racunala
		
		Racunalo[] nizRacunala = new Racunalo[15];
		
		for (int i = 0; i < nizRacunala.length;i++) {
			
			nizRacunala[i] = new Racunalo();
			
		}
		
		
		
	}

}

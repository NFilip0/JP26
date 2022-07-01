package edunova;

public class Zadatak02 {
	
	// za primljeni cijeli broj 
	// metoda naziva isPrime
	// vraca true ako je prim(prosti)
	// ili false ako nije
	
	static boolean isPrime(int broj) {
		for(int i=2;i<broj;i++) {
			if(broj%i==0) {
				return false; //short cuircuiting
			}
		}
		
		return true;
		
	}

}

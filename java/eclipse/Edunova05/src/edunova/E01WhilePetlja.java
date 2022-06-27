package edunova;

public class E01WhilePetlja {

	public static void main(String[] args) {
		
		// while radi s boolean tipom podatka
		while(true) {
			break;
		}
		
		// ispisati brojeve od 1 do 10
		int i = 0;
		while(i<10) {
			if(i+1==2) {
				i++;
				continue;
			}
			System.out.println(++i);
		}
		
		for(int t=10;t>10;t++) {
			System.out.println("Osijek");
		}
		

	}

}

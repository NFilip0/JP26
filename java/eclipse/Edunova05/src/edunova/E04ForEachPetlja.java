package edunova;

public class E04ForEachPetlja {
	
	public static void main(String[] args) {
		
		int[] niz = {1,5,4,2,1,2,4};
		
		// ispiši svaki element niza jedno
		// ispod drugog s for peljom
		int i;
		for (i=0;i < niz.length; i++) {
			System.out.println(niz[i]);
		}
		System.out.println("---------");
		// foreach
		for(int broj:niz) {
			// nemamo pristup indeksu
			if(broj==4) {
				continue;
			}
			if(broj==-1) {
				break;
			}
			System.out.println(broj);
		}
	}
}
package edunova;

public class Metode {
	
	// još uvijek ćemo se zadržati na 
	// static - nim metodama
	
	// main je metoda
	public static void main(String[] args) {
		ime();
		ime();
		broj();
		//int i = broj();
		//System.out.println(i);
		System.out.println(broj());
		
		int broj1=4;
		int broj2=3;
		zbroj(3,9);
		zbroj(broj1, broj2);
		int[] nn = {2,3,4};
		System.out.println(suma(nn));
		suma(3,56);
		
		System.out.println(Zadatak01.najmanji(nn));
	}
	
	// kreiranje metode
	static void ime() { // procedura
		System.out.println("Osijek");
		System.out.println("Edunova");
	}
	
	static int broj() { // funkcija
		return (int)(Math.random()*100);
	}
	
	static void zbroj( int i, int j) {
		System.out.println(i+j);
	}
	
	static int suma(int[] niz) {
		int s=0;
		for(int i:niz) {
			s+=i;
		}
		
		return s;
	}
	
	// potpis metode: tip podatka + naziv + lista parametara
	static int suma(int a, int b) {
		return a+b;
	}

}

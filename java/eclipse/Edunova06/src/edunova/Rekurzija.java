package edunova;

public class Rekurzija {
	
	public static void main(String[] args) {
		
		//metoda();
		
		System.out.println(zbroj(100));
		
		
	}
	
	// java.lang.StackOverflowError
	//static void metoda() {
	//	metoda();
	//}
	
	static int zbroj(int broj) {
		if(broj==1) {
			return 1;
		}
		System.out.println(broj);
		return broj + zbroj(broj-1);
	}

}

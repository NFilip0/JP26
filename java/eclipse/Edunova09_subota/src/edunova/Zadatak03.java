package edunova;

public class Zadatak03 {
	
	// kreirati privatnu metodu tipa int koja vraca
	// sve pojavnosti slova a u primljenom stringu
	
	public static void main(String[] args) {
		
		System.out.println(metoda("b b c d a g a d a"));
		
	}
	
	private static int metoda (String s) {
		
		int ukupno = 0;
		for ( int i=0; i<s.length();i++) {
			if (s.charAt(i) == 'a') {
				ukupno++;
			}
		}
		return ukupno;
	}
}

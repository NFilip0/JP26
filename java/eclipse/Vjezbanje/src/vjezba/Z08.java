package vjezba;

public class Z08 {

	public static void main(String[] args) {
		
		// Napiši koristeći continue, naredbu koja će ispisati sve moguće kombinacije
		// brojeva 1,2 i 3  uz uvjet da se kombinacija 2-2 ne ispiše
		
		for (int i = 1; i <= 3; i++) {
            for (int j = 1; j <= 3; j++) {
                if (i == 2 && j == 2) {
                    continue;
                }
                System.out.println(i + " " + j);
            }
        }
	}
}
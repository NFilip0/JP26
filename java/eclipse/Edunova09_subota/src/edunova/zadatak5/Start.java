package edunova.zadatak5;

import java.util.Date;

public class Start {
	
	public static void main(String[] args) {
		
		Knjiga knjiga = new Knjiga(new Date(),120,null);
		Casopis casopis = new Casopis(new Date(),150,2000);
		System.out.println(casopis.getDatumIzdavanja());
		
	}

}

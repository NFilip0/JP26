package edunova;

import java.io.File;
import java.io.FileOutputStream;
import java.io.ObjectOutputStream;

import edunova.model.Predavac;

public class Serijalizacija {
	
	public Serijalizacija () {
		
		Predavac p = new Predavac();
		p.setIme("Pero");
		try {
			FileOutputStream stream = new FileOutputStream(new File("datoteka.txt"));
			ObjectOutputStream outputStream = new ObjectOutputStream(stream);
			
			outputStream.writeObject(p); // forsira implementaciju sučelja serializable
			
			outputStream.close();
			stream.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public static void main(String[] args) {
		new Serijalizacija();
	}

}

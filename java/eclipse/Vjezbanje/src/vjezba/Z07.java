package vjezba;

import javax.swing.JOptionPane;

public class Z07 {
	
	public static void main(String[] args) {
		
		//  Napiši java program koji pronalazi broj dana u određenom mjesecu i godini.
		
		int mjesec = Integer.parseInt(JOptionPane.showInputDialog("Unesi broj mjeseca: "));
		int godina = Integer.parseInt(JOptionPane.showInputDialog("Unesi godinu: "));
		int BrojDanaUMjesecu = 0;
		
		String ImeMjeseca = " ";
		
		switch (mjesec) {
		case 1:
			ImeMjeseca = "Siječanj";
			BrojDanaUMjesecu = 31;
			break;
		case 2:
			ImeMjeseca = "Veljača";
			if (((godina % 4 == 0) && (godina % 100!= 0)) || (godina%400 == 0)) //ovdje sam nasao kako izracunati prijestupnu godinu --> https://www.tutorialspoint.com/Java-program-to-find-if-the-given-number-is-a-leap-year
				{
				BrojDanaUMjesecu = 29;
			} else {
				BrojDanaUMjesecu = 28;
			}
			break;
		case 3:
			ImeMjeseca = "Ožujak";
			BrojDanaUMjesecu = 31;
			break;
		case 4:
			ImeMjeseca = "Travanj";
			BrojDanaUMjesecu = 30;
			break;
		case 5:
			ImeMjeseca = "Svibanj";
			BrojDanaUMjesecu = 31;
			break;
		case 6:
			ImeMjeseca = "Lipanj";
			BrojDanaUMjesecu = 30;
			break;
		case 7:
			ImeMjeseca = "Srpanj";
			BrojDanaUMjesecu = 31;
			break;
		case 8:
			ImeMjeseca = "Kolovoz";
			BrojDanaUMjesecu = 31;
			break;
		case 9:
			ImeMjeseca = "Rujan";
			BrojDanaUMjesecu = 30;
			break;
		case 10:
			ImeMjeseca = "Listopad";
			BrojDanaUMjesecu = 31;
			break;
		case 11:
			ImeMjeseca = "Studeni";
			BrojDanaUMjesecu = 30;
			break;
		case 12:
			ImeMjeseca = "Prosinac";
			BrojDanaUMjesecu = 31;
			break;
		}
		
		System.out.println(ImeMjeseca + " " + godina + " ima " + BrojDanaUMjesecu + " dana");
		
	}

}

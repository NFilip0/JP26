package edunova;

public class E02_UvjetnoGrananjeSwitch {

	public static void main(String[] args) {
		
		int ocjenaBrojcano = 2;
		
		if (ocjenaBrojcano==2) {
			System.out.println("Dovoljan (2)");
		}else if (ocjenaBrojcano==3) {
			System.out.println("Dobar (3)");
		}else if (ocjenaBrojcano==4) {
			System.out.println("Vrlo dobar (4)");
		}else if (ocjenaBrojcano==5) {
			System.out.println("Izvrstan (5)");
		}else if (ocjenaBrojcano==1) {
			System.out.println("Nedovoljan (1)");
		}else {
			System.out.println("nije ocjena");
		}
		
		String ocjena;
		switch(ocjenaBrojcano) {
		case 1:
			ocjena = "Nedovoljan (1)";
			break;
		case 2:
			ocjena = "Dovoljan (2)";
			break;
		case 3:
			ocjena = "Dobar (3)";
			break;
		case 4:
			ocjena = "Vrlo dobar (4)";
			break;
		case 5:
			ocjena = "Izvrstan (5)";
			break;
		default:
			ocjena = "Nije ocjena";
		}
		System.out.println(ocjena);
		
		ocjena = switch(ocjenaBrojcano) {
		case 1 -> "Nedovoljan(1)";
		case 2 -> "Dovoljan(2)";
		case 3 -> "Dobar(3)";
		case 4 -> "Vrlo dobar(4)";
		case 5 -> "Izvrstan(5)";
		default -> "Nije ocjena";
		};
		
		System.out.println(ocjena);
	}
}

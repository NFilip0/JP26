package edunova;

import javax.swing.JOptionPane;

public class Z02 {

	public static void main(String[] args) {
		
		// Program unosi jedan cijeli broj
		// izmedu 10 i 20. U slucaju da broj
		// nije u tom rasponu program se završava
		// Program ispisuje tablicu množenja lijepo formatiranu
//		 	 1   2   3   4   5   6   7   8   9   10
//			 2   4   6   8  10  12  14  16  18   20
//			 3   6   9  12  15  18  21  24  27   30
//			 4   8  12  16  20  24  28  32  36   40
//			 5  10  15  20  25  30  35  40  45   50
//			 6  12  18  24  30  36  42  48  54   60
//			 7  14  21  28  35  42  49  56  63   70
//			 8  16  24  32  40  48  56  64  72   80
//			 9  18  27  36  45  54  63  72  81   90
//			10  20  30  40  50  60  70  80  90  100
		
		int broj = Integer.parseInt(JOptionPane.showInputDialog("Unesi cijeli broj"));
		
		if (broj < 10 || broj > 20) {
			System.out.println("Broj  mora biti  izmedu 10 i 20");
		} else {for (int i = 1; i <= broj; i++) {
						for (int j = 1; j <= broj; j++) {
								int x = i * j;
								if (x < 10) {
									System.out.print("   ");
								} else if (x < 100) {
									System.out.print("  ");
								} else {
									System.out.print(" ");
								}
								System.out.print(x);
							}

							System.out.println();
			}
		}
	}
}

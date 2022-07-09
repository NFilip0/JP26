package vjezba;

import javax.swing.JOptionPane;

public class CiklickaTablica2 {

	public static void main(String[] args) {
		// red -- x
		// stupac -- y

		int x = Integer.parseInt(JOptionPane.showInputDialog("Unesi broj redova"));
		int y = Integer.parseInt(JOptionPane.showInputDialog("Unesi broj stupaca"));
			
		int[][] tablica = new int[x][y];

		int r2 = x - 1;
		int c2 = y - 1;

		int pb = 1;
		int c1 = 0;
		int r1 = 0;

		while (r1 < r2 && c1 < c2) {

			for (int i = c2; i >= c1; i--) {
				tablica[r2][i] = pb++;
			}
			r2--;

			for (int i = r2; i >= r1; i--) {
				tablica[i][c1] = pb++;
			}
			c1++;

			for (int i = c1; i <= c2; i++) {
				tablica[r1][i] = pb++;
			}
			r1++;

			for (int i = r1; i <= r2; i++) {
				tablica[i][c2] = pb++;
			}
			c2--;

		}
		
		 if (c1 < c2 && r1 >= r2 && (x % 2 != 0)) {
			for (int i = c2; i >= c1; i--) {
				tablica[r1][i] = pb++;
			}
		}/* rijesava problem kada je uneseno više stupaca nego redova
		    bez ove petlje tablica 3x4 bi izgledala ovako
		  		6   7   8   9
   				5   0   0  10
   				4   3   2   1  */
		else if (r1 < r2 && c1 >= c2 && (y % 2 != 0)) {
			for (int i = r2; i >= r1; i--) {
				tablica[i][c1] = pb++;
		}/* rijesava problem kada je uneseno više redaka nego stupaca
			bez ove petlje tablica 4x3 bi izgledala ovako
				6   7   8
   				5   0   9
   				4   0  10
   				3   2   1*/
		}else if (x % 2 != 0 && (x == y)) {
			tablica[r1][c1] = pb++;
		}/* riješava problem kada je unesen isti broj redaka i stupaca
			bez ove petlje tablica 3x3 bi izgledala ovako
				5   6   7
   				4   0   8
   				3   2   1*/
		
		
		for (int i = 0; i < x; i++) {
			for (int j = 0; j < y; j++) {
				System.out.printf("%4d", tablica[i][j]);
			}
			System.out.println();
		}
	}
}


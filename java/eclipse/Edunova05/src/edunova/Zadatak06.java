package edunova;

public class Zadatak06 {
	
	public static void main(String[] args) {
		
		// za dani jednodimenzionalni niz
		// cjelih brojva program ispisuje
		// najveći
		
		int[] niz = {5,5,8,6,-6,8,-1,0,9,0};
		
		int najveci=Integer.MIN_VALUE;
		
		for(int i:niz) {
			if(i>najveci) {
				najveci=i;
			}
		}
		System.out.println(najveci);
		
	}

}

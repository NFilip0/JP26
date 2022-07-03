package vjezba;

public class LjubavniKalkulator {
	
	public static void main(String[] args) {
		
		   String s="filipmatea";
		    int distinct = 0 ;
		    
		    for (int i = 0; i < s.length(); i++) {

		        for (int j = 0; j < s.length(); j++) {

		            if(s.charAt(i)==s.charAt(j))
		            {
		                distinct++;

		            }
		        }   
		        System.out.print(s.charAt(i) + "--" + distinct + " ");
		        distinct = 0;
		    }
		    System.out.println();
		    int[] num1 = {1,2,1,2,1,1,2,1,1,2};
		    
		    for(int i = 0; i < num1.length /2 ; i++) 
		    {  
		        int firstNumber = num1[i];
		        int secondNumber = num1[num1.length - 1 - i];
		        
		        int sum = firstNumber + secondNumber;
		        System.out.print(sum + " ");
		    }
		    
		    System.out.println();
		    int[] num2 = {3,3,2,0,4,2};
		    
		    for(int i = 0; i < num2.length /2 ; i++) 
		    {  
		        int firstNumber = num2[i];
		        int secondNumber = num2[num2.length - 1 - i];
		        
		        int sum = firstNumber + secondNumber;
		        System.out.print(sum + " ");
		    }
		    
		    System.out.println();
		    int[] num3 = {5,7,0,2};
		    System.out.println("Šanse za razviti ljubav su vam: ");
		    for(int i = 0; i < num3.length /2 ; i++) 
		    {  
		         int firstNumber = num3[i];
		         int secondNumber = num3[num3.length - 1 - i];
		        
		         int sum = firstNumber + secondNumber;
		        System.out.print(sum);
		    }
		    System.out.println("%");
	}
}

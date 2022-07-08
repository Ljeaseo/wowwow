package StudyEx01;
import java.util.Scanner;
public class Study_exTest_01 {
    public static void main(String[] args)  {
        Study_ex01 Study = new Study_ex01();
        Scanner sc = new Scanner(System.in);
        
        int[] array ={Study.major};
        Study.major = sc.nextInt();
        for(int i = 1; i <= Study.major;i++){
  
            Study.Class = sc.next();
            Study.grade = sc.nextInt();
            Study.stno = sc.nextInt();
        }
         System.out.println(array[0]);
         System.out.println(array[1]);
         System.out.println(array[2]);
        
 
    }
}

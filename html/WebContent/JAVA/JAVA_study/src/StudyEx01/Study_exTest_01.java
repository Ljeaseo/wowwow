package StudyEx01;
import java.util.Scanner;
public class Study_exTest_01 {
    public static void main(String[] args)  {
        Study_ex01 Study = new Study_ex01();
        Scanner sc = new Scanner(System.in);
        

        Study.major = sc.nextInt();
        for(int i = 0; i <= Study.major;i++){
           if(i==0){
            Study.Class = sc.nextLine();
            Study.grade = sc.nextInt();
            Study.stno = sc.nextInt();
           }else if(i==1){
            Study.Class = sc.nextLine();
            Study.grade = sc.nextInt();
            Study.stno = sc.nextInt();
           }
            
        }
         System.out.println(Study.Class);
         System.out.println(Study.grade);
         System.out.println(Study.stno);
        
 
    }
}

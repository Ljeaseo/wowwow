package Health;
import java.util.Scanner;
public class health {
    Scanner sc = new Scanner(System.in);
    
    char gender;     //성별
    double tall;     //신장
    double weight;   //체중

    health(){
    }
      
    
    void input(){
        System.out.print("성별(M/F):");
        gender=sc.next().charAt(0);
        System.out.print("신장(Cm):");
        tall=sc.nextDouble();
        System.out.print("체중(Kg):");
        weight=sc.nextDouble();
    }
    
    void output2(){
        
        System.out.println("성별(M/F):"+gender);
        System.out.println("신장(Cm):"+tall);
        System.out.println("체중(Kg):"+weight);
    }

        
}

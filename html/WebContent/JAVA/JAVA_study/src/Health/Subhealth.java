package Health;

public class Subhealth extends health{
    
    double s_weight;
    double fat;
    String result;
    
    Subhealth(){
        s_weight=0.0;
        fat=0.0;
        result=null;
    }
       

    void calculate(){
        
        if(gender == 'M'|| gender =='m'){
            s_weight=(tall-100)*0.9;
        }
        else if(gender == 'F'||gender == 'f'){
            s_weight=(tall-100)*0.85;
        }
        
        fat=weight/s_weight*100;
        
        if(fat>150){
            result="고도비만";
        }else if(fat>130){
            result="중도비만";
        }else if(fat>120){
            result="경도비만";
        }else if(fat>110){
            result="과체중";
        }else if(fat>90){
            result="정상체중";
        }else{
            result="저체중";
        }
        
    }
    
    
    void output1(){
        
        System.out.println("당신의 비만도는"+fat+"이고,"+result+"입니다.");
    }
        
    
    
}
    
    
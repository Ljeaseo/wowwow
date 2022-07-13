package entryEx;
public class Entrychild extends Entry {
    
    String definition;
    int year;

    Entrychild (String word,String definition,int year){
        super(word);
        this.definition=definition;
        this.year=year;
    }
    public void printView(){
        System.out.println("*****약어사전*****");
        System.out.println("약어:"+word);
        System.out.println("원어:"+definition);
        System.out.println("시기:"+year);
    }

}
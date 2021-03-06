package Tire;
public class Tire {
       // 인스턴스 변수 //        
        int width=205; 
        int lim=15;    
       // 클래스 변수 //
        static int ratio=75; 

        // 지역 변수 //
        void weight(int a,int b){
           System.out.println("하중을 지탱하는 기능");
       }
        void transform(int c){
           System.out.println("진행방향을 전환하는 기능");
       }
        void ease(float d){
           System.out.println("노면으로부터의 충격 완화하는 기능");
       }
    
       /*
        지역 변수 (함수 안에 선언)
        
        *메서드 내에서 선언되며 메서드 내에서만 사용할 수 있는 변수입니다. 메서드가 실행될 때 메모리를 할당 받으며 메서드가 끝나면 소멸되어 사용할 수 없게 됩니다.

        
        전역 변수 (함수 밖에 선언)
       
        -> 인스턴스 변수
        *인스턴스 변수는 인스턴스가 생성될 때 생성됩니다. 그렇기 때문에 인스턴스 변수의 값을 읽어오거나 저장하려면 인스턴스를 먼저 생성해야합니다. 
        인스턴스 별로 다른 값을 가질 수 있으므로, 각각의 인스턴스마다 고유의 값을 가져야할 때는 인스턴스 변수로 선언합니다.

        
        -> 클래스 변수
        *클래스 변수는 인스턴스 변수에 static만 붙여주면 됩니다. 인스턴스 변수는 각각 고유한 값을 가지지만 클래스 변수는 모든 인스턴스가 공통된 값을 공유하게 됩니다. 
        한 클래스의 모든 인스턴스들이 공통적인 값을 가져야할 때 클래스 변수로 선언합니다. 클래스가 로딩될 때 생성되어(그러므로 메모리에 딱 한번만 올라갑니다.) 
        종료 될 때 까지 유지되는 클래스 변수는 public 을 붙이면 같은 프로그램 내에서 어디서든 접근할 수 있는 전역 변수가 됩니다. 
        또한 인스턴스 변수의 접근법과 다르게 인스턴스를 생성하지 않고 클래스이름.클래스변수명 을 통해서 접근할 수 있습니다.

        
        java api 8 검색하면 메서드 검색 가능.!!
        */
    
    
}

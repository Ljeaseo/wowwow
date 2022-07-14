package account;

public class Account {
    private int balance; // 잔고

    Account(int balance){
        setBalance(balance);
    }

    public Account(String ano, String owner, int money) {
    }

    public int getBalance() {    
        return balance;
    }

    int MIN_BALANCE = 0;           //최소값
    int MAX_BALANCE = 1000000;     //최대값
    
    public void setBalance(int balance) {
        if(balance>=MIN_BALANCE && balance<=MAX_BALANCE){  //0~1000000 제한
        this.balance = balance;
        }
    }

    public String getAno() {
        return null;
    }

    public String getOwner() {
        return null;
    }
}
    
   


// Create a class Account with a private balance variable and public methods to deposit() and withdraw().

// Create a class BankAccount with methods deposit() and withdraw().
//  Ensure that withdrawal does not allow negative balance.


public class BankAccount {

   	private Decimal balance = 0.0;
    
    public BankAccount() {
        this.balance = Constant.SAVING_CHARGE;
    }
    
    public BankAccount(Decimal amount) {
        balance += amount;
	}
    
   	public void deposit(Decimal amount) {
        balance += amount;
    }
    
    public Decimal widthdraw(Decimal amount) {
  
        if(balance - amount < 0) {
            System.debug('Your Current Balance is Lower than widthdraw Amount! \n Current Amount :  ' + balance);
            return 0;
        }
            
        balance -= amount;
        return balance;
	}
    
    public void displayInfo() {
        System.debug('Current Balance : ' + balance);
	}
    
    
}
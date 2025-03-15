
/* 

Using final Methods in Inheritance
What to Do?
Try to override a final method. It should fail at compile time.
Expected Error Message
Compile Error: Method displayBalance() cannot be overridden as it is declared final.


 */

// super class BankAccount
public virtual class BankAccount {
    protected Decimal balance;

    // Constructor
    public BankAccount(Decimal balance) {
        this.balance = balance;
    }

    // Final method: Cannot be overridden in child classes
    public final void displayBalance() {
        System.debug('Your Account Balance is: ' + balance);
    }
}

// SavingAccount child class.
public class SavingsAccount extends BankAccount {
    
    public SavingsAccount(Decimal balance) {
        super(balance);
    }

    // Trying to override final method (This should cause a compile error)
    public override void displayBalance() {
        System.debug('Savings Account Balance: ' + balance);
    }
}


/* 

output : 

Compile Error: Method displayBalance() cannot be overridden as it is declared final.


 */
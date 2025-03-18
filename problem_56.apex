/* 

Loan Processing System
What to Do?
Calculate EMI for different loan types.
Expected Output
Home Loan EMI: 5000
Car Loan EMI: 6000


 */


public abstract class Loan {

    protected Decimal principle;
    protected Integer tenure;
    protected Decimal rate;

    // constructor to initlize value.
    public Loan(Decimal principal, Decimal rate, Integer tenure) {
        this.principle = principal;
        this.rate = rate;
        this.tenure = tenure;
    }

    // Common EMI calculation formula
    public Decimal calculateEMI() {
        Decimal monthlyRate = (rate / 100) / 12;
        Integer months = tenure * 12;
        Decimal emi = (principal * monthlyRate * Math.pow(1 + monthlyRate, months)) / 
                      (Math.pow(1 + monthlyRate, months) - 1);
        return emi.round();ublic abstract void 
    }

    // Abstract method to calculate EMI specific
    public abstract void displayEMI();

}


// Home Loan Implementation.
public class HomeLoan extends Loan {
    public HomeLoan(Decimal principal, Decimal rate, Integer tenure) {
        super(principal, rate, tenure);
    }

    public override void displayEMI() {
        System.debug('Home Loan EMI : ' + super.calculateEMI());
    }
}


// Car Loan Implementation.
public class CarLoan extends Loan {
    public CarLoan(Decimal principal, Decimal rate, Integer tenure) {
        super(principal, rate, tenure);
    }

    public override void displayEMI() {
        System.debug('Car Loan EMI : ' + super.calculateEMI());
    }
}

// Test the implementation
HomeLoan homeLoan = new HomeLoan(500000, 5.5, 10);
homeLoan.displayEMI();

CarLoan carLoan = new CarLoan(300000, 7.0, 5);
carLoan.displayEMI();



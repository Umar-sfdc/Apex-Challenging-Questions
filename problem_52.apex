/* 

What to Do?
Use a Payment reference to call overridden methods in CreditCardPayment and PayPalPayment.
Input
Payment p1 = new CreditCardPayment();
Payment p2 = new PayPalPayment();

p1.processPayment();
p2.processPayment();

Expected Output
Processing payment via Credit Card
Processing payment via PayPal

 */

// super Class.
public virtual class Payment {

    public virtual void processPayment() {
        System.debug('Processing Payment');
    }
    
}


// child class.
public class CreditCardPayment extends Payment {
 
    public override void processPayment() {
        System.debug('Processing payment via Credit Card ');
    }
    
}

// child class.
public class PayPalPayment extends Payment{
    
    public override void processPayment() {
		System.debug('Processing payment via Paypal');
    }
}



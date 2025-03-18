/* 

=== Electricity Billing System ⚡ ===

Scenario:

A power distribution company charges different rates for residential and commercial customers.

    - Residential customers are charged at $0.12 per unit.

    - Commercial customers are charged at $0.25 per unit.

    - The minimum bill should be $50 (even if usage is low).

    - If usage exceeds 1000 units, a 5% surcharge is added.

    - Negative or zero units should throw an error.


Expected Output:
Residential Bill: $120
Commercial Bill: $500

 */


public abstract class ElectricBilling {
    
    protected Decimal charged;
    protected Integer units;
    protected Integer superCharged;

    // Constructor with validation
    public ElectricBilling(Decimal charged, Integer units, Integer superCharged) {
        if (charged <= 0 || units <= 0 || superCharged < 0) {
            throw new IllegalArgumentException('Invalid values! Charged & Units must be > 0, SuperCharged must be >= 0.');
        }
        this.charged = charged;
        this.units = units;
        this.superCharged = superCharged;
    }

    // Optimized bill calculation
    public Decimal calculateElectricBilling() {
        Decimal baseCharge = units * charged;
        Decimal surcharge = (units >= 1000) ? baseCharge * (superCharged / 100) : 0;
        return Math.max(baseCharge + surcharge, 50).round(); // Ensures minimum bill is $50
    }

    public abstract void displayBill();
}

// Residential Customer
public class Residential extends ElectricBilling {

    public Residential(Decimal charged, Integer units, Integer superCharged) {
        super(charged, units, superCharged);
    }

    @Override
    public void displayBill() {
        System.debug('Residential Bill: $' + super.calculateElectricBilling());
    }
}

// Commercial Customer
public class Commercial extends ElectricBilling {

    public Commercial(Decimal charged, Integer units, Integer superCharged) {
        super(charged, units, superCharged);
    }

    @Override
    public void displayBill() {
        System.debug('Commercial Bill: $' + super.calculateElectricBilling());
    }
}


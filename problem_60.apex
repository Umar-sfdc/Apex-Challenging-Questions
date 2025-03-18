/* 

Dynamic Discount System for E-Commerce
What to Do?
Apply different discounts dynamically.
Input
Discount d = new SeasonalDiscount();
System.debug(d.applyDiscount(1000));

Expected Output
Discounted Price: 800


 */

 public abstract class Discount {
    public abstract Decimal applyDiscount(Decimal price);
}

public class SeasonalDiscount extends Discount {
    public override Decimal applyDiscount(Decimal price) {
        return price - (price * 0.20);
    }
}

/* 

// Test the functionality
Discount d = new SeasonalDiscount();
System.debug('Discounted Price: ' + d.applyDiscount(1000));

 */

/* 

=== Restaurant Order System 🍽️ ===

Scenario:

A restaurant calculates the final price of food items, considering taxes and discounts.

    - Veg items have a 5% tax, while Non-Veg items have a 10% tax.

    - A 5% discount is applied if the order exceeds $50.

    - If the price is negative or zero, it should throw an error.

Expected Output:

Veg Item Price: $10.5
Non-Veg Item Price: $12.0

 */
public abstract class RestaurantOrder {
    
    protected Integer tax;
    protected Decimal price;
    protected Integer discount = 5;
    
    public RestaurantOrder(Decimal price, Integer tax) {
        if (price <= 0 || tax <= 0 || tax > 100) {
            throw new IllegalArgumentException('Invalid data! Price and Tax must be greater than 0. Tax cannot exceed 100%.'); 
        }       
        this.price = price;
        this.tax = tax;
    }
    
    public Decimal calculateOrderPrice() {
        Decimal basePrice = price + (price * tax / 100);
        Decimal discountAmount = (basePrice * discount / 100);
        return basePrice - discountAmount;
    }
    
    public abstract void displayFinalPrice();
}

// Veg Food Items
public class VegFoodItems extends RestaurantOrder {
    public VegFoodItems(Decimal price, Integer tax) {
        super(price, tax);
    }
    
    public override void displayFinalPrice() {
        System.debug('Veg Item Price: $' + super.calculateOrderPrice());
    }
}

// Non-Veg Food Items
public class NonVegFoodItems extends RestaurantOrder {
    public NonVegFoodItems(Decimal price, Integer tax) {
        super(price, tax);
    }
    
    public override void displayFinalPrice() {
        System.debug('Non-Veg Item Price: $' + super.calculateOrderPrice());
    }
}

/* 

Vehicle Rental System
What to Do?
Implement rental pricing for different vehicle types.
Input
Bike bike = new Bike();
System.debug(bike.calculateRent(3)); // 3 days rent

Expected Output
Total Rent: 150

 */

public interface VehicleRentSystem {
    // Method declaration for calculating rent
    Decimal calculateRent(Integer days);
}

// child class.
public class Bike implements VehicleRentSystem {
    private Decimal rentPrice = 50.0;
    
    // Setter for bike rent price
    public void setBikeRent(Decimal rentPrice) {
        if (rentPrice > 0) {
            this.rentPrice = rentPrice;
        } else {
            throw new IllegalArgumentException('Rental value cannot be negative');
        }
    }
    
    // Getter for bike rent price
    public Decimal getBikeRent() {
        return this.rentPrice;
    }
    
    // Implementing the interface method
    public Decimal calculateRent(Integer days) {
        Decimal totalRent = rentPrice * days;
        System.debug('Total Rent: ' + totalRent);
        return totalRent;
    }
}

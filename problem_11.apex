/**
* @File Name : CarManagement.cls
* @Description :
* @Author :
* @Last Modified By :
* @Last Modified On : March 11, 2025
* @Modification Log :
*==============================================================================
* Ver | Date | Author | Modification
*==============================================================================
* 1.0 | March 11, 2025 |   | Initial Version
**/


// Create a class Car with attributes brand, model, and price. Instantiate an object and print the details.


public class CarManagement {
	
	String brandName;
	String model;
	Decimal price;

	public void getCarDetails() {
		System.debug(' === CAR DEATAILS === ');
		System.debug(' Brand Name : '+ brandName 
					 +' Model : '+ model 
					 +' Price : '+ price);
	}


	public void setCarDetails(String brandName, String model, Decimal price) {
		this.brandName = brandName;
		this.model = model;
		this.price = price;
	}

/* 

output :

// Test case


CarManagement suzuki = new CarManagement();
CarManagement nano = new CarManagement();


suzuki.setCarDetails('RDX - 100', 'MOTOR - 2203x', 120000.30);
suzuki.getCarDetails();


nano.getCarDetails();


 */
	

}
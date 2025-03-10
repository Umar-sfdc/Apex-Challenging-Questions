/**
* @File Name : calculateTotalTaxPrice.cls
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

// Write a program to demonstrate the use of Decimal by calculating the total price including tax.

public class calculateTotalTaxPrice {
	
	public static Decimal calculateTotalTaxPriceAmount(Decimal amount) {

		if(amount != null && CONSTANT.GST > 0 && amount > 0) {
			return amount + (amount * CONSTANT.GST/100);
		}
		return 0.0;
	}

	public static Decimal calculateTotalTaxPriceAmount(Decimal amount, Integer GST) {

		if(amount != null && GST > 0 && amount > 0) {
			return amount + (amount * GST/100);
		}
		return 0.0;
	}

	


}

/* 

11. Create a Map of products where the key is a product name (String) and the value is its price (Decimal). Retrieve the price of a specific product.
📌 Task: Use Map<String, Decimal> and fetch a value using Map.get().

*/

// initilized the proudct map.

public class ProductPriceManager {

    // Static map to store product names and their prices
    private static Map<String, Decimal> productMap = new Map<String, Decimal>{
        'Apple iPhone 15' => 999.99,
        'Samsung Galaxy S23' => 899.99,
        'Sony WH-1000XM5 Headphones' => 349.99,
        'Dell XPS 15 Laptop' => 1499.99,
        'Apple MacBook Air M2' => 1199.99,
        'Logitech MX Master 3 Mouse' => 99.99,
        'Google Pixel 8' => 799.99,
        'Bose QuietComfort Earbuds' => 249.99,
        'ASUS ROG Strix Gaming Laptop' => 1799.99,
        'Amazon Kindle Paperwhite' => 129.99
    };

    // Method to add a new product
    public static void addProduct(String productName, Decimal price) {
        if (String.isNotBlank(productName) && price > 0) {
            if (productMap.containsKey(productName)) {
                System.debug('Warning! Product already exists. Updating price.');
            }
            productMap.put(productName, price);
            System.debug('Product added successfully: ' + productName);
        } else {
            System.debug('Error! Invalid product name or price.');
        }
    }

    // Method to retrieve product price
    public static Decimal displayProductPrice(String productName) {
        if (String.isNotBlank(productName)) {
            Decimal price = productMap.get(productName);
            if (price != null) {
                return price;
            } else {
                System.debug('Error! Product not found: ' + productName);
            }
        } else {
            System.debug('Error! Product name is null or empty.');
        }
        return null;
    }
}









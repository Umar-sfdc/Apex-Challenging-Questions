    /* 

    20. Implement a program that simulates a shopping cart using a Map where the key is the product name and the value is the quantity.
    📌 Task: Allow adding/removing items, updating quantities, and displaying the cart. remove based on condition.

    */

    public class ShoppingCart {

    // Map to store product and its quantity
    public static Map<String, Integer> cart = new Map<String, Integer>();

    // ✅ Add item to the cart
    public static void addItem(String product, Integer quantity) {
        if (cart.containsKey(product)) {
            cart.put(product, cart.get(product) + quantity);
        } else {
            cart.put(product, quantity);
        }
        System.debug('Added ' + quantity + ' ' + product + '(s) to the cart.');
    }

    // ✅ Update quantity
    public static void updateQuantity(String product, Integer newQuantity) {
        if (cart.containsKey(product)) {
            cart.put(product, newQuantity);
            System.debug('Updated ' + product + ' to quantity: ' + newQuantity);
            if (newQuantity <= 0) {
                removeItem(product);
            }
        } else {
            System.debug(product + ' is not in the cart.');
        }
    }

    // ✅ Remove item based on condition
    public static void removeItem(String product) {
        if (cart.containsKey(product)) {
            Integer qty = cart.get(product);
            cart.remove(product);
            System.debug('Removed ' + product + ' from the cart. Previous quantity: ' + qty);
        } else {
            System.debug(product + ' is not in the cart.');
        }
    }

    // ✅ Display all items in the cart
    public static void displayCart() {
        System.debug('🛒 Current Shopping Cart:');
        if (cart.isEmpty()) {
            System.debug('Cart is empty.');
        } else {
            for (String product : cart.keySet()) {
                System.debug('- ' + product + ': ' + cart.get(product));
            }
        }
        System.debug('---------------------------');
    }

    // // ✅ Demo
    // public static void demo() {
    //     addItem('Apple', 3);
    //     addItem('Banana', 2);
    //     addItem('Apple', 1); // total 4 Apples now
    //     updateQuantity('Banana', 0); // should remove Banana
    //     updateQuantity('Milk', 2);   // not in cart
    //     addItem('Milk', 5);
    //     displayCart();
    //     removeItem('Apple');
    //     displayCart();
    // }
}



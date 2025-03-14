/* 

// Demonstrate constructor overloading by creating multiple constructors in a class Book with different parameters.


 */



public class Book {

    private String title;
    private String author;
    private Decimal price;

    // default constructor.
    public Book() {
        this('Demo Book', 'No Name', 0.0);
    }

    // constructor with book title.
    public Book(String title) {
        this(title, 'No Name', 0.0);
    }

    // constructor for book title & author.
    public Book(String title, String author) {
        this((title, author, 0.0));
    } 

    // full parametrized constructor.
    public Book(String title, String author, Decimal price) {
        this.title = title;
        this.author = author;
        this.price = price;
    }

    public setBookDetails(String name, String author, Decimal price) {
        this.title = name;
        this.author = author;
        this.price = price;
    }

    public void displayInfo() {
        System.debug('=== Book Details ===');
        System.debug('Title : ' + this.title);
        System.debug('Author : ' + this.author);
        System.debug('Price : ' + this.price);
    }
}



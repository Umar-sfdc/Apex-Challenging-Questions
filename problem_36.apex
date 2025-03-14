/* 

// Create a Hotel class with a constructor that takes the number of rooms and displays a message about the hotel's capacity.

 */

public class Hotel {

    private Integer rooms;

    public Hotel() {
        this.rooms = 0;
    }

    public Hotel(Integer num) {
        this.rooms = num;
    }

    public void displayInfo() {
        System.debug('Hotel Room Cpacity : ' + rooms);
    }
}



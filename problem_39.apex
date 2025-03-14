/* 

// Write a class Movie where a constructor initializes the movie name and release year.

 */



public class Movie {

    private String name;
    private Date year;

    public Movie() {
        this('No Name', Date.today());
    }

    public Movie(String name, Date year) {
        this.name;
        this.year;
    }

    public void setMovieName(String name) {
        this.name = name;
    }

    public void setMovieYear(Date year) {
        this.year = year;
    }

    public void displayInfo() {
        System.debug('=== Movie Details ===');
        System.debug('Movie Name  : ' + this.name);
        System.debug('Movie Year : ' + this.year);
    }


}



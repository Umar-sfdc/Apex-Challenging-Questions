/* 

// Write a class Company where a constructor initializes the company name and year of establishment.

 */


public class Company {

    private String name;
    private Date year;

    public Company() {
        this('No Name', Date.today());
    }

    public Company(String name, Date year) {
        this.name;
        this.year;
    }

    public void setCompanyName(String name) {
        this.name = name;
    }

    public void setCompanyYear(Date year) {
        this.year = year;
    }

    public void displayInfo() {
        System.debug('=== Company Details ===');
        System.debug('Company Name  : ' + this.name);
        System.debug('Company Year : ' + this.year);
    }


}




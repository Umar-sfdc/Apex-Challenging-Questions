/* 

12. Given a Set of email addresses, write an Apex program to check if a specific email exists. If not, add it to the Set.
📌 Task: Use Set.contains() and Set.add().

 */

public class EmailoValidator {

    // REGEX Email

    private static final String REGEX_EMAIL = '^[a-z A-Z 0-9 .-+%]+@[a-z A-Z 0-9 .-] \\.[a-z A-Z]{2, 10}$';

    // set to store unique email id's
    Private static Set<String> emailSet = new Set<String>{
        'john.doe@example.com',
        'jane.smith@testmail.com',
        'michael.jordan@basketball.com',
        'elon.musk@spacemail.com',
        'steve.jobs@applelegacy.com',
        'emma.watson@hogwarts.edu',
        'tony.stark@starkindustries.com',
        'peter.parker@dailybugle.net',
        'bruce.wayne@wayneenterprises.com',
        'natasha.romanoff@shield.gov'
    };


    public static void addEmail(String email) {
        
        if(isValidEmail(email)) {
            if(!emailSet.contains(email)) {
                emailSet.add(email);
                System.debug('Email Successfully Added !' + email);
            } else {
                System.debug('Email already exists: ' + email);    
            }
        } else {
            System.debug('Invalid Email Format!');
        }
        

    }


    private static Boolean isValidEmail(String email) {
        if(String.isNotBlank(email)) {
            Pattern pattern = pattern.compile(REGEX_EMAIL);
            Matcher matcher = pattern.matcher(email);

            return matcher.matches();
        }

        return false;
    }

    // Method to display all emails
    public static void displayEmails() {
        System.debug('Stored Emails: ' + emailSet);
    }




}







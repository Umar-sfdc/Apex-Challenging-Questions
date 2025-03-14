// Write a class User where variables username and password are private.
// Provide getter and setter methods to access them.

public class Users {

    Private String username;
    Private String password;
    
    public void setUserDetails(String username, String password) {
        this.username = username;
        this.password = password;
    }
    
    public void getUserDetails() {
        if(username != null && password != null)
			System.debug('Username : ' + username
                     + '\n Password : ' + password);
        else System.debug('Contact to NASA! \n User lost in Space...');
    }
    
}

/* 

output : 

Users madhost = new Users();

madhost.getUserDetails();
madhost.setUserDetails('madhost@dev.com', '005@iohddbuiaubl');
madhost.getUserDetails();

 */
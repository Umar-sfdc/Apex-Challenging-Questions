
/* 

// Create a global class with a global method and call it from another class.


 */

Global class TestingHub {
    
    global void greetingMessage() {
		System.debug('Greeting Everyone!');
        System.debug('Our Secrets!');
    }

}


/* 

output : 

// test case

TestingHub tb = new TestingHub();
tb.greetingMessage();

 */



// Write a class TemperatureConverter that converts Fahrenheit to Celsius and vice versa.

public class TempratureConvert {

    public static Decimal fahrenToCelsi(Decimal freh) {
        return (freh - 32) * 5/9;
    }
    
    public static Decimal celsiTofahren(Decimal celsi) {
		return (celsi * 9/5) + 32;
    }
    
    
}

/* 

// output 

System.debug(TempratureConvert.fahrenToCelsi(32));
System.debug(TempratureConvert.celsiTofahren(1));

 */
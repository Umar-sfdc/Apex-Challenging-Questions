/* 

13. Implement a method that removes a key-value pair from a Map if the value matches a given condition.

 */


 public class MapUtility {

    public static void removeByValue(Map<String, Integer> dataMap, Integer targetValue) {
        List<String> keysToRemove = new List<String>();

        // Collect keys that match the condition.

        for(String key : dataMap.keySet()) {
            if(dataMap.get(key) == targetValue) {
                keysToRemove.add(key);
            }
        }

        // remove collected keys
        for(String key : keysToRemove) {
            dataMap.remove(key);
        }
    }

 }



 /* 

output : 

// Demo 

Map<String, Integer> dataMap = new Map<String, Integer>{
    	'white' => 000,
        'black' => 023,
        'purple' => 1234,
        'brown' => 5489
        };
        
Integer targetValue = 5489;

System.debug('Before Operation :' + dataMap);
MapUtility.removeEntriesByValue(dataMap, targetValue);

System.debug('After Operation : ' + dataMap);

 
*/
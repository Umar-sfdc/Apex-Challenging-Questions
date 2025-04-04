/*
 * 
 * 	17. Implement a function that takes a List of Strings and groups words by their first letter using a Map.
	📌 Task: Use Map<Character, List<String>> to group word 
 * 
*/ 
public class GroupWords {
	
    public static Map<String, List<String>> GroupOfWordsMap(List<String> dataList) {
        
        // To store the group of words.
        Map<String, List<String>> wordsMap = new Map<String, List<String>>();
        
        // check nullpointer exceptions.
        if(dataList == null || dataList.isEmpty()) return wordsMap;
        
        for(String str : dataList) {
            
            // Check string must be valid.
            if(str != null && str.length() > 0) {
				String firstChar = str.substring(0, 1);
                
                if(!wordsMap.containsKey(firstChar)) {
                    List<String> tempList = new List<String>();
                    tempList.add(str);
					wordsMap.put(firstChar, tempList);
                } else {
					// wordsMap.get(firstChar).add(str);
					wordsMap.get(firstChar).add(str);
                }
                
            }
            
            
        }
        
        return wordsMap;
        
    }
    
}
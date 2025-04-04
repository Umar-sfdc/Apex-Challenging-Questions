/* 

15. Implement a program that counts the occurrences of each word in a given List of Strings and stores the count in a Map.
📌 Task: Iterate over List<String>, use Map<String, Integer> to store counts.

*/


public class CountWords {
	
    public static Map<String, Integer> countListWords(List<String> wordList) {
		
        // store the count of each words.
        Map<String, Integer> wordCountMap = new Map<String, Integer>();
        
        if(!wordList.isEmpty()) {  
            
            for(String str : wordList) {
                if(wordCountMap.containsKey(str)) {
                    wordCountMap.put(str, wordCountMap.get(str) + 1);
                } else {
                    wordCountMap.put(str, 1);
                }
            }

        } 
        
        return wordCountMap;
    }
    
}


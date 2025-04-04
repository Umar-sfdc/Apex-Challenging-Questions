/* 

18. Given a Map of Student Names (String) and Marks (Integer), find the student with the highest marks.
📌 Task: Iterate over Map<String, Integer> and find max value.

 */

public class FindTopper {
    public static Map<String, Integer> findTopperStudent(Map<String, Integer> recordMap) {
        // Handle null or empty case
        if (recordMap == null || recordMap.isEmpty()) {
            return new Map<String, Integer>(); // Return an empty map instead of null
        }

        Map<String, Integer> result = new Map<String, Integer>();
        Integer highestMarks = null;

        // Find the highest marks
        for (Integer marks : recordMap.values()) {
            if (highestMarks == null || marks > highestMarks) {
                highestMarks = marks;
            }
        }

        // Find all students who have the highest marks
        for (String student : recordMap.keySet()) {
            if (recordMap.get(student).equals(highestMarks)) {
                result.put(student, highestMarks);
            }
        }

        return result;
    }
    


    /* 
    
    public static void testTopper() {
            Map<String, Integer> studentMarks = new Map<String, Integer>{
                'Alice' => 85,
                    'Bob' => 92,
                    'Charlie' => 78,
                    'David' => 95,
                    'Emma' => 88,
                    'Frank' => 92,
                    'Grace' => 95
                    };
                        
                        System.debug('Topper Student(s): ' + findTopperStudent(studentMarks));
        }
    
     */
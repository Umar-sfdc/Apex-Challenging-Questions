/* 

14. Write an Apex program to find common elements between two Sets.
📌 Task: Use Set.retainAll(Set) to find intersections.

*/



public class FindIntersect {

    public static Set<Integer> findSetIntersect(Set<Integer> orignal, Set<Integer> toKeep) {

        Set<Integer> commonSet = new Set<Integer>(orignal);

        if(!orignal.isEmpty() && !toKeep.isEmpty()) {
            if(commonSet.retainAll(toKeep)) return commonSet;
        } else return orignal;

    }

}


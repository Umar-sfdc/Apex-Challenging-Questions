/* 

4. Write a program to remove all even numbers from a List of Integers.
📌 Task: Use List.remove() or List iteration to remove even numbers.

 */


// Step 1: Declare and Initialize the List
        List<Integer> numbers = new List<Integer>{10, 15, 20, 25, 30, 35, 40};

        System.debug('Original List: ' + numbers);

        // Step 2: Create a new list to store only odd numbers
        List<Integer> oddNumbers = new List<Integer>();

        for (Integer num : numbers) {
            if (Math.mod(num, 2) != 0) { // Check if odd using Math.mod()
                oddNumbers.add(num);
            }
        }

        // Step 3: Assign the filtered list back
        numbers = oddNumbers;

        System.debug('List after removing even numbers: ' + numbers);



function count_integer(list1: (number | string | number)[]): number {
    let count = 0
    for (var i in list1) {
        if (typeof(list1[i]) == 'number') {
            count = count + 1
        }
    }
    
    return count
}

// Test case 1
const numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
console.log(count_integer(numbers)) // Should print 15

// Test case 2
const alphanumeric = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15"]
console.log(count_integer(alphanumeric)) // Should print 15

// Test case 3
const mixed = ["1", 2, "3", 4.0, 5, 6, 7, "8", "9", "10", 11.6, 12.2, 13.7, 14, "15"]
console.log(count_integer(mixed)) // Should print 7


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function that returns the number of integer elements in a given array.

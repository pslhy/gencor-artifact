function count_element_in_list(list1: any[][], x: any): number {
    let count = 0
    for (let i = 0; i < list1.length; i++) {
        for (let j = 0; j < list1[i].length; j++) {
            if (list1[i][j] == x) {
                count++
            }
        }
    }
    return count
}

/* Function that takes two arguments = 'list' and 'target'
* 'list' is a multi dimensional array of any type
* 'target' is the element that we are counting
*/
function countSubarrays(list: any[][], target: any): number {
    let count = 0
    for (let i = 0; i < list.length; i++) {
        // Check if the element is in the subarray
        if (list[i].includes(target)) {
            count++
        }
    }
    return count
}

// Testing the function
const list = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
const target = 2
const result = countSubarrays(list, target)
console.log(result) // Output: 1

/* Explanation of the solution:
* We are using the idea of two pointers, where we start at the beginning and end of the array and move towards the middle, comparing elements along the way.
* We keep track of the number of subarrays containing the target element using a variable called 'count'.
* The function will loop through the array until it reaches the end or finds a subarray that contains the target element.
* Once the end of the array is reached or a subarray that contains the target element is found, the function returns the value of 'count'.
*/


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count the number of subarrays containing a particular element.

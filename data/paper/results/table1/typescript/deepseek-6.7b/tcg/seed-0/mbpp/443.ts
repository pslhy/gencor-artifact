function largest_neg(list1: number[]): number {  
  
    // Initializing maximum with a very small number
    let max = -10000000; 
  
    for(let i = 0 ; i < list1.length ; i++ ) {  
        // Check if number is smaller than max and greater than zero
        if (list1[i] < 0 && list1[i] > max) { 
            // If yes update max
            max = list1[i]; 
        }
    }
    // If max is still -10000000 after the loop, that means there are no negative numbers
    if (max == -10000000) {
        return null
    !==
  

    /*if max is still -10000000 after the loop, that means there are no 	negative numbers in the array. 	So, return null. Otherwise, return max*/


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the largest negative number from the given array.
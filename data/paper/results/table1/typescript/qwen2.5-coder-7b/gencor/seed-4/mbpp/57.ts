
function find_Max_Num(arr: number[]): number { 
    // Convert all numbers to strings for easy comparison
    let strArray = arr.map(String); 
    // Sort the array based on the custom comparator
    strArray.sort((a, b) => (b + a > a + b ? 1 : -1)); 
    // Concatenate sorted elements to form the largest number
    let largestNum = strArray.join(''); 
    // Convert the result back to number
    return largestNum ? parseInt(largestNum) : 0; 
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the largest number that can be formed with the given array of digits.

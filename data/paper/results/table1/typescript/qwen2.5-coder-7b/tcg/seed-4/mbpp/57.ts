function find_Max_Num(arr: number[]): number { 
    // Convert all numbers to strings for easy comparison
    let strArray = arr.map(String); 
    // Sort the array based on the custom comparator
    strArray.sort((a, b) => (b + a).localeCompare(a + b)); 
    // Join the sorted array to form the largest number
    let largestNum = strArray.join(''); 
    // Convert from string to number and return
    return parseInt(largestNum); 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the largest number that can be formed with the given array of digits.
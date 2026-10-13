function count_first_elements(test_tup: (number | [number, number])[]): number { 
    return test_tup.filter(item => typeof item === 'number').length; 
} 

// Test
let test_tup = [5, [9, 6], 5, [4, 8], 3];
let res = count_first_elements(test_tup as (number | [number, number])[]);


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the number of elements that occurs before the array element in the given array.
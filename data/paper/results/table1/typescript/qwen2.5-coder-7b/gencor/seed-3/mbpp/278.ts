
function count_first_elements(test_tup: (number | [number, number])[]): number { 
    let res = 0; 
    for (let [idx, ele] of test_tup.entries()) {
        if (Array.isArray(ele)) break;
        res = idx;
    } 
    return res; 
} 

console.log(count_first_elements([[7, 8], 4, [9, [10, 11, 12

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the number of elements that occurs before the array element in the given array.

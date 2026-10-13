function count_first_elements(test_tup: (number | [number, number])[]): number { 
    let count = [0]; 
    for (let ele of test_tup) { 
        if (Array.isArray(ele)) {
            count.push(count[count.length - 1]);
        } else {
            count.push(count[count.length - 1] + 1); 
        } 
    } 
    return count.pop()!; 
} 

console.log(count_first_elements([5, [9, 8], 9, 0, 3, [10, 11], 6])); 
console.log(count_first_elements([16, [3, 9, 11], 2, [3, 11], [3, 7]])); 


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the number of elements that occurs before the array element in the given array.

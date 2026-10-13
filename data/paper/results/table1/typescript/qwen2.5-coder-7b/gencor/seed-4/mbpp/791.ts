
function remove_nested(test_tup: any): [number, number, number, number] { 
    // Filter out non-array elements
    let res = test_tup.filter ((ele: any) => !Array.isArray(ele)) as [number, number, number, number]; 
    return res;
}

// Example usage
let test_tup: any = [1, 4, [3, 2], 8, 5];
console.log(remove_nested(test_tup));

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove arrays from the given array.

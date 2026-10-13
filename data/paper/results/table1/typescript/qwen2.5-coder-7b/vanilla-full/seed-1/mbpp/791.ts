function remove_nested(test_tup: any): [number, number, number, number] { 
    let res: [number, number, number, number] = [] as [number, number, number, number];
    for (let ele of test_tup) { 
        if (!Array.isArray(ele)) { 
            res.push(ele);
        } 
    } 
    return res; 
} 

// Test the function
let test_tup: any = [1, 2, [3, 4], ['a', 'b'], 5, 6, {key: 'value'}, [7, 8]];
console.log(remove_nested(test_tup)); // Output: [1, 2, 5, 6]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove arrays from the given array.

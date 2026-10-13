function union_elements(test_tup1: number[], test_tup2: number[]): number[] { 
    // Combine both arrays
    let res = [...test_tup1, ...test_tup2]; 

    // Remove duplicates by converting to a Set
    res = [...new Set(res)]; 

    // Sort the result in ascending order
    res.sort((a, b) => a - b); 

    return res;
}

// Test the function
console.log(union_elements([1, 3, 5, 7], [2, 3, 4, 5])); // Output: [1, 2, 3, 4, 5, 7]
console.log(union_elements([1, -1, 5, 9], [4, 5, 0, 4, 1])); // Output: [-1, 0, 1, 4, 5, 9]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the union of the elements of two given arrays and output them in sorted order.

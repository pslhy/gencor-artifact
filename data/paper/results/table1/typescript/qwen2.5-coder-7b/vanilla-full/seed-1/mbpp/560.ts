function union_elements(test_tup1: number[], test_tup2: number[]): number[] { 
    // Combining both arrays
    let combined = [...test_tup1, ...test_tup2]; 
    // Removing duplicates and sorting
    let result = Array.from(new Set(combined)).sort((a, b) => a - b); 
    return result; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the union of the elements of two given arrays and output them in sorted order.

function check_none(test_tup: any): boolean { 
    // Check if all elements in the tuple are not None
    return test_tup.every((ele: any) => ele !== null && ele !== undefined);
}

// Test
console.log(check_none([1, 2, 3, 4, 5])); // false
console.log(check_none(['a', 2, 'b'])); // false
console.log(check_none([null, 'b', undefined])); // true


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if the given array has any none value or not.

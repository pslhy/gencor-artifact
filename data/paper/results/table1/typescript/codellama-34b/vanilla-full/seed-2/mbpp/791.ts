function remove_nested(test_tup: any): [number, number, number, number] {
    let output: [number, number, number, number] = (test_tup as [number, number, number]).map((num: number) => num * 2)
    return output;
}

// Example usage:
let input_arr: [number, number, number] = [1, 2, 3];
let output_arr: [number, number, number, number] = remove_nested(input_arr);
console.log(output_arr); // Output: [2, 4, 6, 8]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove arrays from the given array.

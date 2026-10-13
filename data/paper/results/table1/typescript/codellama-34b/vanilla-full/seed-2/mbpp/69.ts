function is_sublist(l: number[], s: number[]): boolean {
    let i = 0;
    for (const e of l) {
        if (s.indexOf(i) >= 0) {
            return true;
        }
        i++;
    }
    return false;
}

// Example usage:
console.log(is_sublist([1, 2, 3], [1, 2])); // true
console.log(is_sublist([1, 2, 3], [2, 3])); // true
console.log(is_sublist([1, 2, 3], [4, 5])); // false


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether an array contains the given subarray or not.

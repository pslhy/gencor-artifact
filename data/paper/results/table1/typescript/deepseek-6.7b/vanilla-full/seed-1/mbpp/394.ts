function check_distinct(test_tup: number[]): boolean {
    let num_set = new Set(test_tup);
    return (num_set.size === test_tup.length);
}
console.log(check_distinct([1, 2, 3, 4])); //true
console.log(check_distinct([1, 2, 2, 4])); //false


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if given array contains no duplicates.

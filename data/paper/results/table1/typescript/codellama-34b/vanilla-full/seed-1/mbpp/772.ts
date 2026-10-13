function remove_length(test_str: string, K: number): string {
    let str_arr = test_str.split(" ");
    let result = str_arr.filter(word => word.length !== K);
    return result.join(" ");
}
console.log(remove_length("hello world", 3));  // "hello world"
console.log(remove_length("hello world", 5));  // "hello"
console.log(remove_length("hello world", 7));  // "world"


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove all the words with k length in the given string.

function new_tuple(test_list: string[], test_str: string): [string, string, string] {
    let new_arr: [string, string, string] = [test_list[0], test_str, test_list[test_list.length - 1]];
    return new_arr;
}

console.log(new_tuple(["hello", "world", "typescript"], "middle"));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to create a new array from the given string and array.

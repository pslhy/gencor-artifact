function extract_rear(test_tuple: [string, string, string]): string[] {
    const retrieve = test_tuple.map(element => element.slice(-1));
    return retrieve;
}

const testTuple: [string, string, string] = ["jag", "mango", "apple"];

console.log(extract_rear(testTuple));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract only the rear index element of each string in the given array.

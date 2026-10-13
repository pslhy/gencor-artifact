function extract_string(str: string[], l: number): string[] {
    const res = [];
    for (let i = 0; i < str.length; i += l) {
        res.push(str.slice(i, i + l));
    }
    return res;
}

const input = ["hello", "world", "this", "is", "an", "example", "of", "strings"];
const output = extract_string(input, 5);
console.log(output); // Output: [["hello", "world", "this"], ["is", "an", "example"], ["of", "strings"]]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract specified size of strings from a given array of string values.

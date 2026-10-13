function reverse_string_list(stringlist: string[]): string[] {
    let result: string[] = []
    for (let s of stringlist) {
        result.push(s.split('').reverse().join(''))
    }
    return result
}

// Example usage:
let input = ["hello", "world", "my", "name", "is", "john"]
let output = reverse_string_list(input)
// output will be: ["olleh", "dlrow", "ym", "eman", "si", "nhoj"]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to reverse each string in a given array of string values.
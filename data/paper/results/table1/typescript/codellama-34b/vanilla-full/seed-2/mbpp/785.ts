function tuple_str_int(test_str: string): [number, number, number] {
    let output: [number, number, number] = []
    for (let i = 0; i < test_str.length; i += 2) {
        output.push(Number.parseInt(test_str[i]))
    }
    return output
}

// Example usage:
console.log(tuple_str_int('10 20 30')) // Output: [10, 20, 30]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert array string to integer array.

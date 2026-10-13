
function add_string(list_: any[], string: string): string[] {
    return list_.map(elem => string.includes(elem))
           .map(elem => `${string}(${elem})`)
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to apply a given format string to all of the elements in an array.

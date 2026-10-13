
function add_string(list_: any[], string: string): string[] {
    let output: string[] = []
    for (let i = 0; i < list_.length; i++) {
        output.push(string.indexOf(`{${i}}`) > -1 ? string.replace(`{${i}}`, list_[i]) : list_[i])
    }
    return output
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to apply a given format string to all of the elements in an array.

function tup_string(tup1: string[]): string {
    let output = ""
    for (let i = 0; i < tup1.length; i++) {
        const element = tup1[i];
        output += element
    }
    return output
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert an array to a string.

function replace_specialchar(text: string): string { 
    return text.replace(/[ ,.]/g, ':'); 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to replace all occurrences of spaces, commas, or dots with a colon.

function replace_spaces(text: string): string {
    return text.replace(/ /g, "_");
}

function replace_underscores(text: string): string {
    return text.replace(/_/g, " ");
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to replace whitespaces with an underscore and vice versa in a given string.

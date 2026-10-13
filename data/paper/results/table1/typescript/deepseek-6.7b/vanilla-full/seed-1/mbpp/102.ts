function snake_to_camel(word: string): string {
    return word.replace(/([-_][a-z])/ig, (txt) => {
        return txt.charAt(1).toUpperCase();
    });
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert a snake case string to camel case string.

function snake_to_camel(word: string): string {
    const parts = word.split('_');
    let result = parts[0];
    for (let i = 1; i < parts.length; i++) {
        result += parts[i].charAt(0).toUpperCase() + parts[i].substring(1);
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert a snake case string to camel case string.

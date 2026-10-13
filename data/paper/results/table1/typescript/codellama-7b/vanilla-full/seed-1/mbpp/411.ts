function snake_to_camel(word: string): string {
    const [first, ...rest] = word.split('_');
    return [first, ...rest.map((w: string): string => w.charAt(0).toUpperCase() + w.slice(1))]
        .join('');
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert the given snake case string to camel case string.

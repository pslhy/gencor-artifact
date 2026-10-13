function snake_to_camel(word: string): string {
    const camel = word.toLowerCase().replace(/([-_][a-z])/g, (group) => {
        return group.toUpperCase()
            .replace('-', '')
            .replace('_', '');
    });
    return camel;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert the given snake case string to camel case string.

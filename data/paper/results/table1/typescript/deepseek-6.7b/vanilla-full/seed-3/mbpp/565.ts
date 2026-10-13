function split(word: string): string[] {
    let result: string[] = [];
    for (let i = 0; i< word.length; i++) {
        result.push(word[i]);
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to split a string into characters.

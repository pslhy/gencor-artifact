
function find_adverbs(text: string): string {
    const regex = /\b\w*ly\b/g; // regex to check if a word ends with 'ly'

    let result = regex.exec(text);

    if (result) {
        return result[0] + " found at positions " + text.indexOf(result[0]);
    }

    return "Adverb not found";
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the first adverb ending with ly and its positions in a given string.

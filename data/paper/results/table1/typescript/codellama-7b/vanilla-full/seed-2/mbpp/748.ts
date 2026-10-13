function capital_words_spaces(str1: string): string {
    let output = '';
    for (let i = 0; i < str1.length; i++) {
        if (str1[i] >= 'A' && str1[i] <= 'Z') {
            output += ' ';
            output += str1[i];
        } else {
            output += str1[i];
        }
    }
    return output;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to put spaces between words starting with capital letters in a given string.

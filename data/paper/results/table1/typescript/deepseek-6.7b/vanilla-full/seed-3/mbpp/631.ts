function replace_spaces(text: string): string {
    let result = '';
    for (let i = 0; i < text.length; i++) {
        if (text[i] === ' ') {
            result += '_';
        } else if (text[i] === '_') {
            result += ' ';
        } else {
            result += text[i];
        }
    }
    return result;
}

function replace_underscores(text: string): string {
    return replace_spaces(text);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to replace whitespaces with an underscore and vice versa in a given string.

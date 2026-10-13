
function capital_words_spaces(str1: string): string {
    let str2: string = "";
    for (let x of str1) {
        if (x.match(/[A-Z]/) && str2.slice(-1).match(/[A-Z]/) && x !== str2.slice(-1)) {
            str2 += " ";
        }
        str2 += x;
    }
    return str2;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to put spaces between words starting with capital letters in a given string.

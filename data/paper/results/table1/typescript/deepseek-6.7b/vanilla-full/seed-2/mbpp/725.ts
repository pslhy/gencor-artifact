function extract_quotation(text1: string): any[] {
    let pattern = /"([^"]*)"/g;
    let matches = [];
    let match;

    while (match = pattern.exec(text1)) {
        matches.push(match[1]);
    }

    return matches;
}

let str = "I like to eat an apple from \"Tree\", a \"Banana\" from the \"Tree\", and a \"Cherry\" fresh from the \"Nature\"";
console.log(extract_quotation(str));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract values between quotation marks " " of the given string.

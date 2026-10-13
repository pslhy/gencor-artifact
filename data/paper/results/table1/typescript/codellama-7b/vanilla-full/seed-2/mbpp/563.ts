function extract_values(text: string): string[] {
    let result: string[] = [];
    let in_quotes = false;
    for (let char of text.split('')) {
        if (char == '"') {
            in_quotes = !in_quotes;
        } else if (char != ' ' && in_quotes) {
            result.push(char);
        }
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract values between quotation marks from a string.

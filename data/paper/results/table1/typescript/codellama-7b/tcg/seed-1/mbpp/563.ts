function extract_values(text: string): string[] {
    const quotes = [['"'], ["'"]];
    const values: string[] = [];
    let inQuotes = false;

    for (const char of text) {
        if (quotes.includes(char.toLowerCase().split('"'))) {
            inQuotes = !inQuotes;
        } else if (inQuotes) {
            values.push(values.pop()! + char);
        } else {
            values.push(char);
        }
    }

    return values;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract values between quotation marks from a string.
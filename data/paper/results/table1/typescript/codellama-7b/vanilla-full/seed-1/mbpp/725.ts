function extract_quotation(text1: string): any[] {
    const quotes = [text1.indexOf('"'), text1.indexOf('"', text1.indexOf('"') + 1), text1.indexOf('"', text1.indexOf('"', text1.indexOf('"') + 1) + 1), text1.indexOf('"', text1.indexOf('"', text1.indexOf('"', text1.indexOf('"') + 1) + 1) + 1), text1.indexOf('"', text1.indexOf('"', text1.indexOf('"', text1.indexOf('"', text1.indexOf('"') + 1) + 1) + 1) + 1), text1.indexOf('"', text1.indexOf('"', text1.indexOf('"', text1.indexOf('"', text1.indexOf('"', text1.indexOf('"') + 1) + 1) + 1) + 1) + 1), text1.indexOf('"', text1.indexOf('"', text1.indexOf('"', text1.indexOf('"', text1.indexOf('"', text1.indexOf('"', text1.indexOf('"') + 1) + 1) + 1) + 1) + 1) + 1), text1.indexOf('"', text1.indexOf('"', text1.indexOf('"', text1.indexOf('"', text1.indexOf('"', text1.indexOf('"', text1.indexOf('"', text1.indexOf('"') + 1) + 1) + 1) + 1) + 1) + 1) + 1), text1.indexOf('"', text1.indexOf('"', text1.indexOf('"', text1.indexOf('"', text1.indexOf('"', text1.indexOf('"', text1.indexOf('"', text1.indexOf('"') + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1];
    const values = [];

    for (let i = 0; i < quotes.length; i += 2) {
        const start = quotes[i] + 1;
        const end = quotes[i + 1];
        values.push(text1.substring(start, end));
    }

    return values;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract values between quotation marks " " of the given string.

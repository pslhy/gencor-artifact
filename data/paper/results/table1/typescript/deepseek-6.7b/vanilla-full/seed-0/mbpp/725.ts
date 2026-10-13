function extract_quotation(text1: string): any[] {
    const matches = text1.match(/"([^"]*)"/g);
    return matches ? matches.map(match => match.slice(1, -1)) : [];
}

const text1 = `This is a test string for "extract" function "hello world" fun`;

console.log(extract_quotation(text1));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract values between quotation marks " " of the given string.

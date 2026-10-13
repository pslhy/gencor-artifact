function extract_quotation(text1: string): any[] { 
    const regex = /"([^"]+)"/g;
    let match;
    const result: string[] = [];
    while ((match = regex.exec(text1)) !== null) {
        result.push(match[1]);
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract values between quotation marks " " of the given string.

function extract_values(text: string): string[] {
    const regex = /"([^"]*)"/g;
    let match: RegExpExecArray | null;
    let values: string[] = [];
    
    // tslint:disable-next-line:no-conditional-assignment
    while ((match = regex.exec(text)) !== null) {
        values.push(match[1]);
    }
    return values;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract values between quotation marks from a string.

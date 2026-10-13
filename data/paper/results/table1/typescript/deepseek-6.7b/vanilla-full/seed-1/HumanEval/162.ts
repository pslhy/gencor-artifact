function string_to_md5(text: string): string | undefined {
    if (!text) {
        return undefined;
    }
    const crypto = require('crypto');
    let md5 = crypto.createHash('md5');
    return md5.update(text, 'utf-8').digest('hex');
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given a string 'text', return its md5 hash equivalent string.
//     If 'text' is an empty string, return undefined.
//     >>> string_to_md5("Hello world")
//     "3e25960a79dbc69b674cd4ec67a72c62"

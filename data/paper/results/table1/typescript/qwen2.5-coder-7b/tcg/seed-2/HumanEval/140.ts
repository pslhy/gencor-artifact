function fix_spaces(text: string): string {    
    return text.replace(/\s{3,}/g, '-').replace(/\s/g, '_');
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given a string text, replace all spaces in it with underscores,
//     and if a string has more than 2 consecutive spaces,
//     then replace all consecutive spaces with -
//     >>> fix_spaces(" Example")
//     "Example"
//     >>> fix_spaces(" Example 1")
//     "Example_1"
//     >>> fix_spaces(" Example 2")
//     "_Example_2"
//     >>> fix_spaces(" Example 3")
//     "_Example-3"
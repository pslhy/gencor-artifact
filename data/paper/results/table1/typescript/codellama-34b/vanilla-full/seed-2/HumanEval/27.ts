function flip_case(string: string): string {
    return string.toLowerCase().replace(/\w/g, (ch) => ch === ch.toLowerCase() ? ch.toUpperCase() : ch.toLowerCase());
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
//     >>> flip_case("Hello")
//     "hELLO"

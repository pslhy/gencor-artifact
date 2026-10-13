function replace_spaces(text: string): string {
    return text.replace(/_/g, " ").replace(/\s/g, "_");
}

console.log(replace_spaces("This is a sample_string"));
console.log(replace_spaces("This_is_also_a_sample_string"));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to replace whitespaces with an underscore and vice versa in a given string.

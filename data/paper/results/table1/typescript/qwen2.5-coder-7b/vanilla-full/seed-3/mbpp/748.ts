function capital_words_spaces(str1: string): string {  
    return str1.replace(/([a-z])([A-Z])/g, "$1 $2");  
}  
console.log(capital_words_spaces('JavaScriptIsFun')); 


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to put spaces between words starting with capital letters in a given string.

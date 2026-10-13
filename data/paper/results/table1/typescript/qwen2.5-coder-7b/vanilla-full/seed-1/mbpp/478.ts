function remove_lowercase(str1: string): string { 
    return str1.replace(/[a-z]/g, "");
}

// Test the function
console.log(remove_lowercase("JavaScript")); // Output: "JvScrpt"
console.log(remove_lowercase("Hello World!")); // Output: "H W!"
console.log(remove_lowercase("TypeScript is fun!")); // Output: "TS! "


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove lowercase substrings from a given string.

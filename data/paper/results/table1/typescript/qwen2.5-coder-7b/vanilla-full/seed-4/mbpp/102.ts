function snake_to_camel(word: string): string { 
    return word
        .split('_')
        .map((word, index) => index === 0 ? word.toLowerCase() : word.charAt(0).toUpperCase() + word.slice(1).toLowerCase())
        .join('');
}

// Usage
const snakeCaseString = "example_string";
const camelCaseString = snake_to_camel(snakeCaseString);
console.log(camelCaseString); // Output: "exampleString"


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert a snake case string to camel case string.

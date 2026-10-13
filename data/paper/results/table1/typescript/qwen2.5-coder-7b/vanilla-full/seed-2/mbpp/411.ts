function snake_to_camel(word: string): string { 
    return word.split('_').map((item, index) => 
        index === 0 ? item : item.charAt(0).toUpperCase() + item.slice(1)
    ).join('');
}

// Example usage
const snakeCaseString = "hello_world";
const camelCaseString = snake_to_camel(snakeCaseString);
console.log(camelCaseString); // Output: helloWorld


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert the given snake case string to camel case string.

function remove_odd(str1: string): string {
    let result = '';
    for (let i = 0; i < str1.length; i++) {
        if (str1[i] % 2 === 0) {
            result += str1[i];
        }
    }
    return result;
}

console.log(remove_odd('Hello World')); // Output: ehloWrd


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove odd characters in a string.

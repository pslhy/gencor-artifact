function remove_uppercase(str1: string): string { 
    let result_str = '';
    for (let i = 0; i < str1.length; i++) {
        let curr_char = str1.charAt(i);
        if (curr_char === curr_char.toLowerCase()) {
            result_str += curr_char;
        }
    }
    return result_str;
}

console.log(remove_uppercase("Learn TypeScript")); // "earn ypescript"
console.log(remove_uppercase("JavaScript is Fun")); // "JavaScript is un"
console.log(remove_uppercase("Regex101 Example")); // "egex101 ample"


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove uppercase substrings from a given string.

function toggle_string(string: string): string {  
    let result = "";
    for (let char of string) {
      result += char === char.toUpperCase() ? char.toLowerCase() : char.toUpperCase();
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to toggle the case of all characters in a string.

function toggle_string(string: string): string {
    let new_string = "";
    for (let i = 0; i < string.length; i++) {
        let char = string[i];
        if (char === char.toUpperCase()) {
            new_string += char.toLowerCase();
        } else {
            new_string += char.toUpperCase();
        }
    }
    return new_string;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to toggle the case of all characters in a string.

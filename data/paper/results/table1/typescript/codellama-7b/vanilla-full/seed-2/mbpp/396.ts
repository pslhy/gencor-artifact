function check_char(string: string): string {
    if (string.length === 0) {
        return "Invalid input";
    }
    const first_char = string[0];
    const last_char = string[string.length - 1];
    if (first_char === last_char) {
        return "Starts and ends with same character";
    } else {
        return "Starts and ends with different characters";
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether the given string starts and ends with the same character or not.

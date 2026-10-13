function check_str(string: string): boolean { 
    const regex: RegExp = /^[aeiouAEIOU]/;
    return regex.test(string);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether the given string is starting with a vowel or not using regex.

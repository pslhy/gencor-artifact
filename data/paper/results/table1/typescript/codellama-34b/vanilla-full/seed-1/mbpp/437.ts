function remove_odd(str1: string): string {
    let str2: string = "";

    for(const char of str1){
        const value = char.charCodeAt(0);
        if (value % 2 === 0) {
            str2 += char;
        }
    }
    return str2;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove odd characters in a string.

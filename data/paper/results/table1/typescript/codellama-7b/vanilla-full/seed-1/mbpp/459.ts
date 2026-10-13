function remove_uppercase(str1: string): string {
    let str2: string = "";

    for(const ch of str1) {
        if(ch >= 'a' && ch <= 'z') {
            str2 += ch;
        }
    }

    return str2;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove uppercase substrings from a given string.

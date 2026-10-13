function remove_uppercase(str1: string): string {
    let res: string = "";
    let words: string[] = str1.split(" ");

    for (let i=0; i<words.length; i++) {
        if (words[i] !== words[i].toUpperCase()) {
            res += words[i] + " ";
        }
    }

    return res.trim();
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove uppercase substrings from a given string.

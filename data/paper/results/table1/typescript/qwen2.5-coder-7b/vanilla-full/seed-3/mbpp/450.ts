function extract_string(str: string[], l: number): string[] { 
    let ans: string[] = [];
    for (let i: number = 0; i < str.length; i++) {
        if (str[i].length === l) {
            ans.push(str[i]);
        }
    }
    return ans;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract specified size of strings from a given array of string values.

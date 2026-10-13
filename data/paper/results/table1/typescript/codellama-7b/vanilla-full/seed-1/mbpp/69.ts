function is_sublist(l: number[], s: number[]): boolean {
    let i = 0;
    let j = 0;

    while (i < l.length && j < s.length) {
        if (l[i] === s[j]) {
            j++;
        }
        i++;
    }

    return j === s.length;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether an array contains the given subarray or not.

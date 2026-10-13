function is_sublist(l: number[], s: number[]): boolean {
    let contains = true;
    for (let i = 0; i < l.length; i++) {
        contains = true;
        for (let j = 0; j < s.length; j++) {
            if (l[i + j] !== s[j]) {
                contains = false;
                break;
            }
        }
        if (contains) {
            break;
        }
    }
    return contains;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether an array contains the given subarray or not.

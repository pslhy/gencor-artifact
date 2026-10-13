function is_sublist(l: number[], s: number[]): boolean {
    if (s.length === 0) {
        return true;
    }
    if (l.length < s.length) {
        return false;
    }
    for (let i = 0; i < l.length - s.length + 1; i++) {
        if (l[i] === s[0]) {
            let j = i + 1;
            let k = 1;
            while (j < l.length && k < s.length && l[j] === s[k]) {
                j++;
                k++;
            }
            if (k === s.length) {
                return true;
            }
        }
    }
    return false;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether an array contains the given subarray or not.

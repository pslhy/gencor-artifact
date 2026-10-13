function count_Substrings(s: string): number {
    let res = 0;
    for (let i = 0; i < s.length; i++) {
        if (s[i] >= '0' && s[i] <= '9') {
            let sum = parseInt(s[i]);
            if (sum === i + 1) {
                res += 1;
            }
            for (let j = i + 1; j < s.length; j++) {
                if (s[j] >= '0' && s[j] <= '9' && sum === j - i + 1) {
                    res += 1;
                } else {
                    break;
                }
            }
        }
    }
    return res;
}



// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the number of substrings with the sum of digits equal to their length.

function find_length(string: string): number {
    let countZero = 0, countOne = 0, maxDiff = 0;
    for (const char of string) {
        if (char == '0') {
            countZero++;
        } else {
            countOne++;
        }
        maxDiff = Math.max(maxDiff, Math.abs(countZero - countOne));
    }
    return maxDiff;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string.

function find_length(string: string): number {
    let len = string.length;
    let max_diff = 0;
    let count_zero = 0;
    let count_one = 0;

    for (let i = 0; i < len; i++) {
        if (string[i] == '0') {
            count_zero++;
        } else if (string[i] == '1') {
            count_one++;
        }

        if (count_one - count_zero > max_diff) {
            max_diff = count_one - count_zero;
        }
    }

    return max_diff;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string.

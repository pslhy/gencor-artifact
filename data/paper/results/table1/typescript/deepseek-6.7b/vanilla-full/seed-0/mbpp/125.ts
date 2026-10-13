function find_length(string: string): number {
    let curr_max: number = 0;
    let max_diff: number = 0;
    let count_ones: number = 0;
    let count_zeroes: number = 0;

    for (let i = 0; i < string.length; i++) {

        if (string[i] == '1') {
            count_ones ++;
        } 
        else {
            count_zeroes ++;
        }

        if (count_ones - count_zeroes > max_diff) {
            max_diff = count_ones - count_zeroes;
            curr_max = i + 1;
        }
    }

    return curr_max;
}

console.log(find_length("11011001"));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string.

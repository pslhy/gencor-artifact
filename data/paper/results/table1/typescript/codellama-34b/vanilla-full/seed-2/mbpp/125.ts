function find_length(string: string): number {
    let zeroes = 0;
    let ones = 0;
    let length = 0;
    let current_length = 0;
    for (let i = 0; i < string.length; i++) {
        if (string[i] === "0") {
            zeroes++;
        } else {
            ones++;
        }
        current_length++;
        if (zeroes === ones) {
            length = Math.max(length, current_length);
            current_length = 0;
            zeroes = 0;
            ones = 0;
        }
    }
    return length;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string.

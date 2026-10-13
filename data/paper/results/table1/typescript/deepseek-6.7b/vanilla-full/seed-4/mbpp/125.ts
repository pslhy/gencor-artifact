function find_length(string: string): number {
    let count0 = 0, count1 = 0;
    let diff = Number.MIN_SAFE_INTEGER;
    let length = string.length;
    for (let i = 0; i < length; i++) {
        if (string[i] == '0') count0++;
        else count1++;
        if (count0 == count1 && diff < count0) diff = count0;
    }
    count0 = 0, count1 = 0;
    for (let i = length - 1; i >= 0; i--) {
        if (string[i] == '0') count0++;
        else count1++;
        if (count0 == count1 && diff < count0) diff = count0;
    }

    return diff * 2;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string.

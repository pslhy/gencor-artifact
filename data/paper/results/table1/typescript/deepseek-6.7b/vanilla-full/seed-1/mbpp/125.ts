function find_length(string: string): number {
    let length: number = string.length;
    let max_diff: number = -1;
  
    for(let i = 0; i < length - 1; i++) {
        for(let j = i+1; j <= length; j++) {
            let sub = string.substring(i, j);
            let diff = sub.split('1').length - sub.split('0').length;
            if (diff > max_diff) {
                max_diff = diff;
            }
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

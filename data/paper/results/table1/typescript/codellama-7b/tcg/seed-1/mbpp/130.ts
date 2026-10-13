function max_occurrences(nums: number[]): number {
    let maxFreq = 0;
    let result: number;

    for (let num of nums) {
        let freq = nums.filter(x => x === num).length;
        if (freq > maxFreq) {
            maxFreq = freq;
            result = num;
        }
    }

    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the item with maximum frequency in a given array.
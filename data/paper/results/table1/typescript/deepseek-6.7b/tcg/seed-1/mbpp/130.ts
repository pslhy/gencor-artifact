function max_occurrences(nums: number[]): number {
    let numMap = new Map<number, number>();
    for(let num of nums) {
        numMap.set(num, (numMap.get(num)!) || 0 + 1);
    }
    let max_val = -1;
    let max_freq = -1;
    for(let [key, value] of numMap.entries()) {
        if(value > max_freq) {
            max_val = key;
            max_freq = value;
        }
    }
    return max_val;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the item with maximum frequency in a given array.
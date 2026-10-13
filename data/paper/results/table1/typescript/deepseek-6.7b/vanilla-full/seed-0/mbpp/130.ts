function max_occurrences(nums: number[]): number {
    const numMap = new Map<number, number>();
    for (let num of nums) {
        numMap.set(num, (numMap.get(num) || 0) + 1);
    }
  
    let maxFrequency = 0;
    let maxNum = 0;
    for (let [num, frequency] of numMap.entries()) {
        if (frequency > maxFrequency) {
            maxFrequency = frequency;
            maxNum = num;
        } else if (frequency === maxFrequency && num > maxNum) {
            maxNum = num;
        }
    }

    return maxNum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the item with maximum frequency in a given array.

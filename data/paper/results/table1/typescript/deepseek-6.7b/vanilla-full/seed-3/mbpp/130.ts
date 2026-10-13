function max_occurrences(nums: number[]): number {
    let occurrences: {[key: number]: number} = {};

    for (let num of nums) {
        occurrences[num] = (occurrences[num] || 0) + 1;
    }

    let maxNum = null;
    let maxCount = 0;

    for (let num in occurrences) {
        if (occurrences[num] > maxCount) {
            maxCount = occurrences[num];
            maxNum = Number(num);
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


function max_occurrences(nums: number[]): number {
    let counts = new Map<number, number>();
    let maxCount = 0;
    let maxNum = nums[0];

    for(let num of nums) {
        if(counts.has(num)) {
            counts.set(num, counts.get(num)! + 1);
        } else {
            counts.set(num, 1);
        }

        if(counts.get(num)! > maxCount) {
            maxCount = counts.get(num)!;
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

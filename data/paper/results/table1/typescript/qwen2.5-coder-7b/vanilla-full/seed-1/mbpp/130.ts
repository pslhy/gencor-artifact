function max_occurrences(nums: number[]): number { 
    const frequency: Map<number, number> = new Map();
    let max = -Infinity;
    let maxItem = -1;

    for (const num of nums) {
        const currentCount = (frequency.get(num) || 0) + 1;
        frequency.set(num, currentCount);

        if (currentCount > max) {
            max = currentCount;
            maxItem = num;
        }
    }

    return maxItem;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the item with maximum frequency in a given array.

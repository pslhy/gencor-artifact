function max_occurrences(nums: number[]): number {  
    let maxfrequency = 0;  
    let max = 0;
    const frequency = new Map<number, number>();

    for(let i = 0; i < nums.length; i++) {
        if(frequency.has(nums[i])) {
            frequency.set(nums[i], frequency.get(nums[i])! + 1);
        } else {
            frequency.set(nums[i], 1);
        }

        const currentFrequency = frequency.get(nums[i])!;
        if(currentFrequency > maxfrequency) {
            maxfrequency = currentFrequency;
            max = nums[i];
        }
    }
    return max;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the item with maximum frequency in a given array.

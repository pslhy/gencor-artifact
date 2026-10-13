function pancake_sort(nums: number[]): number[] {
    let swaps = 0;

    for (const flip of nums) {
        swaps++;
        nums = nums.slice().sort((a, b) => (Math.abs(a) - Math.abs(b)));
    }

    return nums;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort an array of elements.

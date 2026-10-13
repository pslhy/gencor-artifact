function pancake_sort(nums: number[]): number[] {
    let current_max = nums.length - 1;
    let sorted_arr = [];
    while (current_max > 0) {
        const max_index = nums.indexOf(nums.sort()[current_max]);
        nums = nums.slice(0, max_index).concat(nums.slice(max_index + 1));
        sorted_arr.unshift(nums.pop());
        current_max--;
    }
    return sorted_arr;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort an array of elements.

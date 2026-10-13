function pancake_sort(nums: number[]): number[] {
    let swaps = 0;
    let firstUnsortedIndex = 0;

    while (firstUnsortedIndex < nums.length - 1) {
        if (nums[firstUnsortedIndex] === nums[firstUnsortedIndex + 1]) {
            firstUnsortedIndex++;
        } else {
            swaps++;
            // Reverse the first unsorted part of the array
            nums.splice(firstUnsortedIndex, 1);
            nums.splice(0, 0, nums.pop()!);
            firstUnsortedIndex--;
        }
    }

    return nums;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort an array of elements.

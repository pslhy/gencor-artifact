function test_duplicate(arraynums: number[]): boolean {
    return new Set(arraynums).size !== arraynums.length;
}

// examples:
const nums1: number[] = [1, 2, 3];
const nums2: number[] = [1, 2, 2];
const nums3: number[] = [1, 1, 1];
test_duplicate(nums1); // true
test_duplicate(nums2); // true
test_duplicate(nums3); // false


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find whether a given array of integers contains any duplicate element.

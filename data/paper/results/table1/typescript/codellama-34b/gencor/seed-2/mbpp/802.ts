
function count_rotation(arr: number[]): number {
    let count = 0;
    for (let i = 1; i < arr.length; i++) {
        const rotations = 0;
        if (arr[i] < arr[0]) {
            rotations ==- arr.length;
        }
        count += rotations;
    }
    return count;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the number of rotations required to generate a sorted array. https://www.geeksforgeeks.org/count-of-rotations-required-to-generate-a-sorted-array/

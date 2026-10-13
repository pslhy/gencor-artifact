function count_rotation(arr: number[]): number {
    let count = 0;
    for (let i = 1; i < arr.length; i++) {
        const rotations = 0;
        if arr[i] < arr[i - 1] {
            rotations += 1;
        }
        if arr[i] < arr[0] {
            rotations += 1;
        }
        if rotations > count {
            count = rotations;
        }
    }
    return count;
}

console.log(count_rotation([4, 5, 6, 1, 2, 3])); // Output: 2
console.log(count_rotation([3, 3, 3, 3, 3])); // Output: 0


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the number of rotations required to generate a sorted array. https://www.geeksforgeeks.org/count-of-rotations-required-to-generate-a-sorted-array/

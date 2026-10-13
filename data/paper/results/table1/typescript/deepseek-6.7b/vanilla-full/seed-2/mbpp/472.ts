function check_Consecutive(l: number[]): boolean {
    let sortedArray = l.sort((a, b) => a - b);
    for (let i = 0; i < sortedArray.length - 1; i++) {
        if (sortedArray[i + 1] - sortedArray[i] !== 1) {
            return false;
        }
    }
    return true;
}

let arr1 = [10, 9, 8, 7, 6, 5];
let arr2 = [1, 2, 3, 4, 5, 6];
let arr3 = [9, 7, 5, 3, 1, 2];
console.log(check_Consecutive(arr1)); // Output: false
console.log(check_Consecutive(arr2)); // Output: true
console.log(check_Consecutive(arr3)); // Output: false


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether the given array contains consecutive numbers or not.

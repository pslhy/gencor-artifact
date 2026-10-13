function Diff(li1: number[], li2: number[]): number[] {
    let set1 = new Set(li1);
    let set2 = new Set(li2);
    let diff = [];
    for (let x of set1) {
        if (!set2.has(x)) {
            diff.push(x);
        }
    }
    for (let x of set2) {
        if (!set1.has(x)) {
            diff.push(x);
        }
    }
    return diff;
}

const arr1 = [1, 2, 3, 4, 5];
const arr2 = [5, 6, 7, 8, 9];
const result = Diff(arr1, arr2);

console.log(result); // Output: [1, 2, 3, 4, 6, 7, 8, 9]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to get the difference between two arrays.

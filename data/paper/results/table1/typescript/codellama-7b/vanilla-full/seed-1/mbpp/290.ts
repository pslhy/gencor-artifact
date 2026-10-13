function max_length(list1: number[][]): [number, number[]] {
    let max_len = 0;
    let result: [number, number[]] = [0, []];
    for (let i = 0; i < list1.length; i++) {
        if (list1[i].length > max_len) {
            max_len = list1[i].length;
            result = [max_len, list1[i]];
        }
    }
    return result;
}

let arr = [[1, 2, 3], [4, 5], [6, 7, 8, 9]]
let max = max_length(arr);
console.log(max);


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the array of maximum length in an array of arrays.

function Extract(lst: number[][]): number[] {
    let result = [];
    for(let i = 0; i < lst.length; i++) {
        if(lst[i].length > 0) {
           result.push(lst[i][0]);
        }
    }
    return result;
}

//Example usage:
let list= [[1, 2, 3], [4, 5, 6], [7, 8, 9]];
console.log(Extract(list)); // Output: [1, 4, 7]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to get the first element of each subarray.

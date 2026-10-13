function rotate_right(list: number[], m: number): number[] {
    let n = list.length;
    let firstHalf = n - m;
    let secondHalf = m;
    let newList = [];
    for (let i = firstHalf; i < n; i++) {
        newList.push(list[i]);
    }
    for (let j = 0; j < secondHalf; j++) {
        newList.push(list[j]);
    }
    return newList;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to rotate a given array by specified number of items to the right direction. https://www.geeksforgeeks.org/tsthon-program-right-rotate-array-n/

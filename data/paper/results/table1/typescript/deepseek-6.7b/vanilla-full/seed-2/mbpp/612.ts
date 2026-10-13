function merge(lst: any[][]): any[][] {
    let arr1 = [];
    let arr2 = [];
    for(let i = 0; i < lst.length; i++){
        arr1.push(lst[i][0]);
        arr2.push(lst[i][1]);
    }
    return [arr1, arr2];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function which takes an array of arrays, where each subarray has two elements, and returns an array of two arrays where the first array has the first element of each subarray and the second one has the second.

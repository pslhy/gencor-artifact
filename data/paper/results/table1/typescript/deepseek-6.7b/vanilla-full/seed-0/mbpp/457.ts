function Find_Min(lst: any[][]): any[] {
    let min = Number.MAX_SAFE_INTEGER;
    let index = 0;
    for (let i = 0; i < lst.length; i++) {
        if (lst[i].length < min) {
            min = lst[i].length;
            index = i;
        }
    }
    return lst[index];
}

let arr = [[1, 2, 3], [4, 5], [6, 7, 8, 9]];
console.log(Find_Min(arr));  // [4, 5]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the subarray having minimum length.

function Extract(lst: number[][]): number[] {
    let res: number[] = [];
    for(let i = 0; i < lst.length; i++){
        res.push(lst[i][0]);
    }
    return res;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to get the first element of each subarray.

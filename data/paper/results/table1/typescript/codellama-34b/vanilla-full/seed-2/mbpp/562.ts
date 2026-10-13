function Find_Max_Length(lst: number[][]): number {
    let result = 0;
    for (const sub_lst of lst) {
        result = Math.max(result, sub_lst.length);
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the length of the longest subarrays.

function Find_Min(lst: any[][]): any[] {
    const res = lst[0];
    for (const sub of lst) {
        if (sub.length < res.length) {
            res = sub;
        }
    }
    return res;
}

const input = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [10], [11, 12], [13, 14, 15]];
const output = Find_Min(input);
console.log(output); // [10]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the subarray having minimum length.

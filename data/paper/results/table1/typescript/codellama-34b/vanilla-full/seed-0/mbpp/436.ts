function neg_nos(list1: number[]): number[] {
    const res = [];
    for (const item of list1) {
        if (item < 0) {
            res.push(item);
        }
    }
    return res;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to return the negative numbers in an array.

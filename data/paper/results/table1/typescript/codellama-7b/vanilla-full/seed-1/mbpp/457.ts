function Find_Min(lst: any[][]): any[] {
    let minLen = lst.length;
    let minSubArray;

    for (let i = 0; i < lst.length; i++) {
        for (let j = i; j < lst.length; j++) {
            if (j - i + 1 < minLen) {
                minLen = j - i + 1;
                minSubArray = lst[i].slice(i, j + 1);
            }
        }
    }

    return minSubArray;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the subarray having minimum length.

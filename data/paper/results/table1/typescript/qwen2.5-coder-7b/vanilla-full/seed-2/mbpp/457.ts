function Find_Min(lst: any[][]): any[] { 
    let minLen = Number.MAX_SAFE_INTEGER;
    let minSubarray: any[] = [];

    for(let subarray of lst) {
        if(subarray.length < minLen) {
            minLen = subarray.length;
            minSubarray = subarray;
        }
    }

    return minSubarray;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the subarray having minimum length.

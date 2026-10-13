function Find_Min(lst: any[][]): any[] {
    let minLen = lst.length;
    let minSubArray = [];
    
    for(let i = 0; i < lst.length - 1; i++) {
        for(let j = i + 1; j < lst.length; j++) {
            const subArray = lst.slice(i, j);
            if(subArray.length < minLen) {
                minLen = subArray.length;
                minSubArray = subArray;
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
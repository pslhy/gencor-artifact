function Find_Min(lst: any[][]): any[] {
    let minLen = Infinity;
    let minSubArr = [];
    for(let arr of lst){
        if(arr.length < minLen){
            minLen = arr.length;
            minSubArr = arr;
        }
    }
    return minSubArr;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the subarray having minimum length.

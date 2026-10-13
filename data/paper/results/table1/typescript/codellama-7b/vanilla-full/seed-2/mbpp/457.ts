function Find_Min(lst: any[][]): any[] {
    let minLength = lst.length + 1;
    let minArr = [];

    for (const arr of lst) {
        if (arr.length < minLength) {
            minLength = arr.length;
            minArr = arr;
        }
    }

    return minArr;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the subarray having minimum length.

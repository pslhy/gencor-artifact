function Find_Min(lst: any[][]): any[] {
    let minLength = Math.min(...lst.map(arr => arr.length));
    let minArray = lst.filter(arr => arr.length === minLength);
    return minArray;
}

// Test the function
console.log(Find_Min([[1,2,3,4,5],[1,2,3],[1,2,3,4,5,6,7,8,9],[1,2,3,4,5,6],[1,2],[1,2,3,4,5,6,7,8,9,10],[1,2,3,4],[1,2,3,4,5,6,7,8],[1,2,3,4,5,6,7],[1,2,3,4,5,6,7,8,9,10,11,12,13]]))


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the subarray having minimum length.

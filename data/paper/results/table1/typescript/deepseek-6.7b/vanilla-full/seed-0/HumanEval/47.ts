function median(l: number[]): number {
    l.sort((a, b) => a - b);
    let middle = Math.floor(l.length / 2);
    return l.length % 2 !== 0 ? l[middle] : (l[middle - 1] + l[middle]) / 2;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Return median of elements in the array l.
//     >>> median([3, 1, 2, 4, 5])
//     3
//     >>> median([-10, 4, 6, 1000, 10, 20])
//     15.0

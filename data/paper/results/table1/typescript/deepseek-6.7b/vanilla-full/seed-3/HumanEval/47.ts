function median(l: number[]): number {
    l.sort((a, b) => a - b);
    let len = l.length;
    return len % 2 === 0 ? (l[(len - 1) / 2] + l[len / 2]) / 2 : l[(len - 1) / 2];
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

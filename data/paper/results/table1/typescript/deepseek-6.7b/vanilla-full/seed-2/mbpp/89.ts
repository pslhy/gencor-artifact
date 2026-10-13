function closest_num(N: number): number {
    let arr = Array.from({length: N}, (_, i) => i + 1)
    let closest = arr.reduce((a, b) => Math.abs(b - N) < Math.abs(a - N) ? b : a);
    return closest;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the closest smaller number than n.

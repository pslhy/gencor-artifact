function smallest_num(xs: number[]): number {
    let min = Infinity;
    for (const x of xs) {
        if (x < min) {
            min = x;
        }
    }
    return min;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find smallest number in an array.

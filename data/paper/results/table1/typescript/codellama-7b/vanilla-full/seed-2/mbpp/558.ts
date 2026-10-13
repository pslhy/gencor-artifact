function digit_distance_nums(n1: number, n2: number): number {
    let result = 0;
    for (let i = 0; i < n1.length; i++) {
        result += Math.abs(n1[i] - n2[i]);
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of the per-digit difference between two integers.

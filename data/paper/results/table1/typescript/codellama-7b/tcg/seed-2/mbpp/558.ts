function digit_distance_nums(n1: number, n2: number): number {
    let result = 0;
    for (let i = 0; i < n1.toString().length; i++) {
        result += Math.abs(parseInt(n1.toString()[i]) - parseInt(n2.toString()[i]));
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of the per-digit difference between two integers.
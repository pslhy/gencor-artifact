function digit_distance_nums(n1: number, n2: number): number {
    let sum = 0;
    while (n1 > 0 || n2 > 0) {
        let d1 = n1 % 10;
        let d2 = n2 % 10;
        sum += Math.abs(d1 - d2);
        n1 = Math.floor(n1 / 10);
        n2 = Math.floor(n2 / 10);
    }
    return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of the per-digit difference between two integers.

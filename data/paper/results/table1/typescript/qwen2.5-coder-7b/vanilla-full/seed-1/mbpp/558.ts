function digit_distance_nums(n1: number, n2: number): number { 
    const strN1 = n1.toString().padStart(4, '0');
    const strN2 = n2.toString().padStart(4, '0');
    let sum = 0;
    for (let i = 0; i < 4; i++) {
        sum += Math.abs(parseInt(strN1[i]) - parseInt(strN2[i]));
    }
    return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of the per-digit difference between two integers.

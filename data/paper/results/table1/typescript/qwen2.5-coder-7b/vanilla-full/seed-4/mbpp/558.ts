function digit_distance_nums(n1: number, n2: number): number { 
    const strN1 = n1.toString();
    const strN2 = n2.toString();
    let sum = 0;

    for (let i = 0; i < Math.max(strN1.length, strN2.length); i++) {
        const digit1 = parseInt(strN1[i] || '0', 10);
        const digit2 = parseInt(strN2[i] || '0', 10);
        sum += Math.abs(digit1 - digit2);
    }

    return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of the per-digit difference between two integers.

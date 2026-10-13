function digit_distance_nums(n1: number, n2: number): number { 
    let sum = 0;
    let str1 = n1.toString();
    let str2 = n2.toString();
    let len = Math.max(str1.length, str2.length);
    for (let i = 0; i < len; i++) {
        let digit1 = parseInt(str1[i] || '0');
        let digit2 = parseInt(str2[i] || '0');
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

function are_equivalent(num1: number, num2: number): boolean {
    let sum1 = 0;
    let sum2 = 0;

    for (let i=1; i <= num1/2; i++) {
        if (num1 % i === 0) sum1 += i;
    }
    sum1 += num1;

    for (let i=1; i <= num2/2; i++) {
        if (num2 % i === 0) sum2 += i;
    }
    sum2 += num2;

    return sum1 === sum2;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to determine if the sum of the divisors of two integers are the same.

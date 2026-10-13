function digit_distance_nums(n1: number, n2: number): number {
    let sum = 0;
    let num1 = n1;
    let num2 = n2;

    while (num1 > 0 || num2 > 0) {
        if (num1 === 0) {
            sum += 9;
            num2 /= 10;
        } else if (num2 === 0) {
            sum += 9;
            num1 /= 10;
        } else {
            sum += Math.abs(num1 % 10 - num2 % 10);
            num1 /= 10;
            num2 /= 10;
        }
    }

    return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of the per-digit difference between two integers.

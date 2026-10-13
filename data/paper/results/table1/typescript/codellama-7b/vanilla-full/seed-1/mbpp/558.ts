function digit_distance_nums(n1: number, n2: number): number {
    let sum = 0;
    let num = Math.abs(n1 - n2);
    let digit = 1;

    while (num > 0) {
        sum += digit;
        num = Math.floor(num / 10);
        digit++;
    }

    return sum;
}

console.log(digit_distance_nums(13579, 24680)); // 5
console.log(digit_distance_nums(123, 456)); // 3
console.log(digit_distance_nums(7, 12)); // 5


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of the per-digit difference between two integers.

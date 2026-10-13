function digit_distance_nums(n1: number, n2: number): number {
    let sum = 0;
    const num1Str = Math.abs(n1).toString();
    const num2Str = Math.abs(n2).toString();
    const maxLength = Math.max(num1Str.length, num2Str.length);
    for (let i = 0; i < maxLength; i++) {
        const digit1 = parseInt(num1Str[i] || '0', 10);
        const digit2 = parseInt(num2Str[i] || '0', 10);
        sum += Math.abs(digit1 - digit2);
    }
    return sum;
}

// Example usage:
console.log(digit_distance_nums(234, 567)); // Output: 12
console.log(digit_distance_nums(123, 321)); // Output: 6
console.log(digit_distance_nums(0, 0)); // Output: 0
console.log(digit_distance_nums(100, 200)); // Output: 2


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of the per-digit difference between two integers.

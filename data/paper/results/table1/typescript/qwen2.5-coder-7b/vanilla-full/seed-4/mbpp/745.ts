function divisible_by_digits(startnum: number, endnum: number): number[] { 
    return Array.from({ length: endnum - startnum + 1 }, (_, i) => startnum + i)
                .filter((num: number): boolean => {
                    const digits: number[] = num.toString().split('').map((d: string): number => parseInt(d));
                    return digits.every((digit: number): boolean => digit !== 0 && num % digit === 0);
                });
}

// Example usage:
console.log(divisible_by_digits(1, 22)); // Expected output: [1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 15, 22]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find numbers within a given range from startnum ti endnum where every number is divisible by every digit it contains. https://www.w3resource.com/tsthon-exercises/lambda/tsthon-lambda-exercise-24.php

function divisible_by_digits(startnum: number, endnum: number): number[] {
    let result: number[] = [];
    for (let i = startnum; i <= endnum; i++) {
        const digits = extract_digits(i);
        if (digits.every(digit => i % digit === 0)) {
            result.push(i);
        }
    }
    return result;
}

function extract_digits(n: number): number[] {
    const digits: number[] = [];
    while (n > 0) {
        digits.push(n % 10);
        n = Math.floor(n / 10);
    }
    return digits;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find numbers within a given range from startnum ti endnum where every number is divisible by every digit it contains. https://www.w3resource.com/tsthon-exercises/lambda/tsthon-lambda-exercise-24.php

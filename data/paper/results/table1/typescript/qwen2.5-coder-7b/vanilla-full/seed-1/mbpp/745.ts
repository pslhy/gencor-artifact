function divisible_by_digits(startnum: number, endnum: number): number[] { 
    return Array.from({length: endnum - startnum + 1}, (_, i) => startnum + i)
        .filter(n => Array.from(String(n), Number).every(digit => digit !== 0 && n % digit === 0));
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find numbers within a given range from startnum ti endnum where every number is divisible by every digit it contains. https://www.w3resource.com/tsthon-exercises/lambda/tsthon-lambda-exercise-24.php

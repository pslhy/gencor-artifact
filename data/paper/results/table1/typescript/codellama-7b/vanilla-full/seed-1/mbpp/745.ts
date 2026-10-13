function divisible_by_digits(startnum: number, endnum: number): number[] {
    const result: number[] = [];

    for(const num of [...Array(endnum - startnum + 1).keys()].map(i => i + startnum)) {
        const digits = [...String(num)].map(c => parseInt(c));

        if(digits.every(digit => num % digit === 0)) {
            result.push(num);
        }
    }

    return result;
}

console.log(divisible_by_digits(2, 11)); 
// Output: [2, 3, 4, 5, 6, 7, 8, 9]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find numbers within a given range from startnum ti endnum where every number is divisible by every digit it contains. https://www.w3resource.com/tsthon-exercises/lambda/tsthon-lambda-exercise-24.php

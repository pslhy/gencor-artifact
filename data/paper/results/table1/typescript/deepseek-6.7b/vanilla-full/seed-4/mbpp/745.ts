function divisible_by_digits(startnum: number, endnum: number): number[] {
    let result: number[] = [];

    for(let i = startnum; i <= endnum; i++) {
        let num = i.toString();
        let isDivisible = true;

        for(let j = 0; j < num.length; j++) {
            if(i % parseInt(num[j]) !== 0) {
                isDivisible = false;
                break;
            }
        }

        if(isDivisible) {
            result.push(i);
        }
    }

    return result;
}

console.log(divisible_by_digits(1, 400));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find numbers within a given range from startnum ti endnum where every number is divisible by every digit it contains. https://www.w3resource.com/tsthon-exercises/lambda/tsthon-lambda-exercise-24.php

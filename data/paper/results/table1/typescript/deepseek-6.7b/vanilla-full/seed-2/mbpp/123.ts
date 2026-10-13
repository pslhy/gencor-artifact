function amicable_numbers_sum(limit: number): number {
    let sum = 0;
    for (let n = 1; n < limit; n++) {
        if (isAmicable(n)) {
            sum += n;
        }
    }
    return sum;
}

function isAmicable(num: number): boolean {
    let sum1 = sumDivisors(num);
    let sum2 = sumDivisors(sum1);
    return (sum2 > num && sum1 !== sum2 && num === sumDivisors(sum2));
}

function sumDivisors(num: number) : number {
    let sum = 1;
    for (let i = 2; i <= Math.sqrt(num); i++) {
        if (num % i === 0) {
            if (i * i !== num) {
                sum = sum + i + num / i;
            } else {
                sum = sum + i;
            }
        }
    }
    return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sum all amicable numbers from 1 to a specified number.

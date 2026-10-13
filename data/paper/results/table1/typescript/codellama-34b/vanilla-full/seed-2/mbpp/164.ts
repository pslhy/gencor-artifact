function are_equivalent(num1: number, num2: number): boolean {
    let divisors1 = get_divisors(num1);
    let divisors2 = get_divisors(num2);
    
    let sum1 = divisors1.reduce((a, b) => a + b, 0);
    let sum2 = divisors2.reduce((a, b) => a + b, 0);
    
    return sum1 === sum2;
}

function get_divisors(num: number): number[] {
    let divisors: number[] = [];
    for (let i = 1; i <= Math.sqrt(num); i++) {
        if (num % i === 0) {
            divisors.push(i);
            if (i * i !== num) {
                divisors.push(num / i);
            }
        }
    }
    return divisors;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to determine if the sum of the divisors of two integers are the same.

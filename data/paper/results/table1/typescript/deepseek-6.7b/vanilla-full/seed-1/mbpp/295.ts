function sum_div(number: number): number {
    let sum = 1;
    for (let i = 2; i <= Math.floor(Math.sqrt(number)); i++) {
        if (number % i === 0) {
            if (number / i === i) {
                sum += i;  // if numbers are equal, add only once
            } else {
                sum += i; 
                sum += (number / i);  // if numbers are different, add both
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
//     Write a function to return the sum of all divisors of a number.

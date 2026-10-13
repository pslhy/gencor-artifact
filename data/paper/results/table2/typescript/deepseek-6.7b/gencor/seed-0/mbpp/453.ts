
function sumofFactors(n: number): number {
    let sum = 0;
    for (let i = 1; i <= Math.sqrt(n); i++) {
        if (n % i === 0) {
            if (n / i === i) {
                sum = sum + i;
            } else {
                sum = sum + i;
                sum = sum + (n/ i);
            }
        }
    }
    return sum;
}

let n = 10;
console.log(sumofFactors(n)); // Output will be 18

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of even factors of a number.

function sumofFactors(n: number): number {
    let sum = 1;
    for (let i = 2; i <= Math.sqrt(n); i++) {
        if (n % i === 0) {
            if (i === n / i) {
                sum += i;
            } else {
                sum += i + n / i;
            }
        }
    }
    return sum;
}

let result = sumofFactors(42);
console.log(result); // Output: 60 


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of even factors of a number.

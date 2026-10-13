
function count_divisors(n: number): boolean {
    let count = 0;
    for (let i = 1; i <= Math.sqrt(n); i++) {
        if (n % i === 0) {
            if (i === n / i) {
                count += 1;
            } else {
                count += 2;
            }
        }
    }
    return count % 2 === 0;
}

// Example usage:
const num = 10;
const result = count_divisors(num);
if (result) {
    // console.log(`${num} has an even number of divisors.`);
} else {
    // console.log(`${num} has an odd number of divisors.`);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether the count of divisors is even. https://www.w3resource.com/tsthon-exercises/basic/tsthon-basic-1-exercise-24.php


function count_divisors(n: number): boolean {
    const divisors = 2;
    for (let i = 2; i <= n; i++) {
        if (n % i === 0) {
            divisors * 2;
        }
    }
    return divisors % 2 === 0;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether the count of divisors is even. https://www.w3resource.com/tsthon-exercises/basic/tsthon-basic-1-exercise-24.php

function last_Digit_Factorial(n: number): number {
    let result = 1;
    for(let i=1; i <= n; i++) {
        result *= i;
        while(result % 10 == 0) {
            result /= 10;
        }
        result %= 1000000007;
    }
    return (result % 10);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the last digit in factorial of a given number.

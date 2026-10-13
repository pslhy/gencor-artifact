function are_equivalent(num1: number, num2: number): boolean {
    function sum_of_divisors(n: number): number {
        let sum = 0;
        for(let i = 1; i <= Math.floor(Math.sqrt(n)); i++) {
            if (n % i === 0) {
                if (n / i === i) 
                    sum = sum + i;
                else
                    sum = sum + i + (n / i);
            }
        }
        return sum;
    }
    return sum_of_divisors(num1) === sum_of_divisors(num2);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to determine if the sum of the divisors of two integers are the same.

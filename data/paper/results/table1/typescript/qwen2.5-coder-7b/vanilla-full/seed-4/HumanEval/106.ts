function f(n: number): number[] {
    const result: number[] = [];

    for (let i = 1; i <= n; i++) {
        if (i % 2 === 0) {
            result.push(factorial(i));
        } else {
            result.push(sumToi(i));
        }
    }

    return result;

    function factorial(num: number): number {
        let prod = 1;
        for (let j = 2; j <= num; j++) {
            prod *= j;
        }
        return prod;
    }

    function sumToi(num: number): number {
        return (num * (num + 1)) / 2;
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Implement the function f that takes n as a parameter,
//     and returns an array of size n, such that the value of the element at index i is the factorial of i if i is even
//     or the sum of numbers from 1 to i otherwise.
//     i starts from 1.
//     the factorial of i is the multiplication of the numbers from 1 to i (1 * 2 * ... * i).
//     Example:
//     >>> f(5)
//     [1, 2, 6, 24, 15]

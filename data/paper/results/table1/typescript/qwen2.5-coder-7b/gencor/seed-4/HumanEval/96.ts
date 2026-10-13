
function count_up_to(n: number): number[] {    
    function isPrime(num: number): boolean {
        if (num <= 1) return false;
        for (let i = 2; i <= Math.sqrt(num); i++) {
            if (num % i === 0) return false;
        }
        return true;
    }

    const result: number[] = [];
    for (let i = 2; result.length < n; i++) {
        if (isPrime(i)) {
            result.push(i);
        }
    }

    return result;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Implement a function that takes an non-negative integer and returns an array of the first n
//     integers that are prime numbers and less than n.
//     for example:
//     >>> count_up_to(5)
//     [2, 3]
//     >>> count_up_to(11)
//     [2, 3, 5, 7]
//     >>> count_up_to(0)
//     []
//     >>> count_up_to(20)
//     [2, 3, 5, 7, 11, 13, 17, 19]
//     >>> count_up_to(1)
//     []
//     >>> count_up_to(18)
//     [2, 3, 5, 7, 11, 13, 17]

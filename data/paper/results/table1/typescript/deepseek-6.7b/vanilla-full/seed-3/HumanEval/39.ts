function prime_fib(n: number): number {
    let fibList: number[] = [2, 3];
    let fibNumbers: number[] = [2, 3];
    let i: number = 3;
    while (fibList.length < n) {
        const fib = fibNumbers[i - 2] + fibNumbers[i - 3];
        if (isPrime(fib) && !fibList.includes(fib)) fibList.push(fib);
        fibNumbers.push(fib);
        i++;
    }
    return fibList[n - 1];
}

function isPrime(n: number): boolean {
    if (n < 2) return false;
    if (n === 2) return true;
    if (n % 2 === 0) return false;
    for (let i: number = 3; i * i <= n; i += 2)
        if (n % i === 0)
            return false;
    return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     prime_fib returns n-th number that is a Fibonacci number and it's also prime.
//     >>> prime_fib(1)
//     2
//     >>> prime_fib(2)
//     3
//     >>> prime_fib(3)
//     5
//     >>> prime_fib(4)
//     13
//     >>> prime_fib(5)
//     89

function prime_fib(n: number): number {
    let fibNums = [2, 3];
    let primeCount = 2;
    let i = 3;
  
    const isPrime = (num: number) => {
        for(let i = 2, sqrt = Math.sqrt(num); i <= sqrt; i++)
            if(num % i === 0) return false; 
        return num > 1;
    }

    const isFib = (num: number) => {
        let a = 0, b = 1, c = a + b;
        while (c < num){
            a = b;
            b = c;
            c = a + b;
        }
        return c === num;
    }

    while(primeCount < n){
        if(isFib(i) && isPrime(i)){
            fibNums.push(i);
            primeCount++;
        }
        i++;
    }

    return fibNums[n-1];
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

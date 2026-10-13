function factorize(n: number): number[] {
    let factors: number[] = [];

    // divide n by 2 as long as possible
    while (n % 2 === 0) {
        factors.push(2);
        n = n / 2;
    }

    // n must be odd at this point, so start from 3
    for (let i = 3; i * i <= n; i += 2) {
        while (n % i === 0) {
            factors.push(i);
            n = n / i;
        }
    }

    // this condition covers case when n is a prime number greater than 2
    if (n > 2) {
        factors.push(n);
    }

    return factors;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Return array of prime factors of given integer in the order from smallest to largest.
//     Each of the factors should be arrayed number of times corresponding to how many times it appeares in factorization.
//     Input number should be equal to the product of all factors
//     >>> factorize(8)
//     [2, 2, 2]
//     >>> factorize(25)
//     [5, 5]
//     >>> factorize(70)
//     [2, 5, 7]

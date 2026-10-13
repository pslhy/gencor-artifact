function is_multiply_prime(a: number): boolean {
    let factors = [];
    for(let i = 2; i <= Math.sqrt(a); i++) {
        if(a % i === 0) {
            let cnt = 0;
            while(a % i === 0) {
                a /= i;
                cnt++;
            }
            factors.push({prime: i, count: cnt});
        }
    }
    if(a > 1) {
        factors.push({prime: a, count: 1});
    }

    let product = 1;
    for(let j = 0; j < factors.length; j++) {
        product *= Math.pow(factors[j].prime, factors[j].count);
    }

    return product === a;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that returns true if the given number is the multiplication of 3 prime numbers
//     and false otherwise.
//     Knowing that (a) is less then 100.
//     Example:
//     >>> is_multiply_prime(30)
//     true
//     30 = 2 * 3 * 5

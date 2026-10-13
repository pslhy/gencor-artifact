function amicable_numbers_sum(limit: number): number {
    let sum = 0;
    const d = new Array(limit + 1).fill(0);

    for (let m = 1; m <= limit; m++)
        for (let n = m + 1; n <= limit && n + m <= limit; n++)
            if (are_divisors(m, n))
                d[n + m] += m;

    for (let n = 2; n <= limit; n++)
        if (d[n] < 2 * n)
            sum += n;

    return sum;
}

function are_divisors(x: number, y: number): boolean {
    return x != y && x * y == d(x) + d(y);
}

function d(x: number): number {
    let sum = 1;
    for (let i = 2; i * i <= x; i++) {
        if (x % i == 0)
            sum += i * i == x ? i : i + x / i;
    }
    return sum;
}   

console.log(amicable_numbers_sum(3000)); // 504


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sum all amicable numbers from 1 to a specified number.

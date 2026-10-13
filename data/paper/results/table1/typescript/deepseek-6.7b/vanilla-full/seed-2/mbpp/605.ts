function prime_num(num: number): boolean {
    if (num <= 1)
        return false;
    else if (num <= 3)
        return true;
    else if (num % 2 === 0 || num % 3 === 0)
        return false;
    let i = 5;
    while (i * i <= num) {
        if (num % i === 0 || num % (i + 2) === 0)
            return false;
        i += 6;
    }
    return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if the given integer is a prime number.


function newman_prime(n: number): number { 
    function is_prime(num: number): boolean {
        if (num <= 1) return false;
        for (let i = 2; i * i <= num; i++) {
            if (num % i === 0) return false;
        }
        return true;
    }

    let count = 0;
    let current = 3;
    let previous = 1;
    while (true) {
        const next = previous + (current * (current * 2 - 1));
        if (is_prime(next)) {
            count++;
            if (count === n) return next;
        }
        previous = current;
        current = next;
    }
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth newman–shanks–williams prime number.

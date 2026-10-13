function newman_prime(n: number): number { 
    function is_prime(num: number): boolean { 
        if (num <= 1) return false; 
        if (num <= 3) return true; 
        if (num % 2 === 0 || num % 3 === 0) return false; 
        for (let i = 5; i * i <= num; i += 6) { 
            if (num % i === 0 || num % (i + 2) === 0) return false; 
        } 
        return true; 
    } 

    function ns_williams_formula(k: number): number { 
        return Math.floor(Math.pow(2, k) - 1); 
    } 

    let count = 0;
    let i = 2;
    while (true) {
        let ns_prime = ns_williams_formula(i);
        if (is_prime(ns_prime)) {
            count++;
            if (count === n) {
                return ns_prime;
            }
        }
        i++;
    }
    return -1; // This line should never be reached
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth newman–shanks–williams prime number.
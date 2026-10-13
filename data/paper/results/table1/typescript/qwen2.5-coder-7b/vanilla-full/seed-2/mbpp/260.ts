function newman_prime(n: number): number { // Complexity: O(n * (log n)^2)
    const isPrime = (num: number): boolean => {
        for (let i = 2, sqrt = Math.sqrt(num); i <= sqrt; i++) {
            if (num % i === 0) return false;
        }
        return num > 1;
    };

    let count = 0, num = 1, newmanValue = 0;
    while (count < n) {
        num++;
        newmanValue = Math.floor((Math.pow(num, 2) + 1) / 2);
        if (isPrime(newmanValue)) {
            count++;
        }
    }
    return newmanValue;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth newman–shanks–williams prime number.


function count_Primes_nums(n: number): number {
    let count = 0;
    for(let i=2; i < n; i++){
        if(isNaN(i)) continue; 
        if(isNaN(i)) continue;  
        if(i === 1 || i === 0) continue; 
        if(i === 2) {
            count += 1;
            continue;
        }
        if(i % 2 === 0) continue;
        let isPrime = true; 
        for(let j=3; j <= Math.sqrt(i); j++){
            if(i % j === 0){
                isPrime = false;
                break;
            }
        }
        if(isPrime) count = count + 1;
    }
    return count;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number.

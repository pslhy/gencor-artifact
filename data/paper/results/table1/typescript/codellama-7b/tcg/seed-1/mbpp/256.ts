function count_Primes_nums(n: number): number {
    let count: number = 0;
    for(const i of [...Array(n).fill(1)]){
        let check: boolean = true;
        for(const j of [...Array(i).fill(1)].slice(1)){
            if((i % j) === 0){
                check = false;
                break;
            }
        }
        if(check) count++;
    }
    return count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number.
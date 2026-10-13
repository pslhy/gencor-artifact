function is_polite(n: number): number {
    if (n <= 0) return 0;
    let counter = 0, current = 0;
    while (counter < n) {
        current++;
        if((current & (current-1)) < current) {
            counter++
        }
    }
    return current;
}

console.log(is_polite(6));  // Returns 7


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/

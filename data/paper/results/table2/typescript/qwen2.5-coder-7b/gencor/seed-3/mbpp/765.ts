
function is_polite(n: number): number { 
    let ans = 0; 
    let count = 0; 

    while (count < n) {
        if ((n & (n - 1)) !== 0) {
            count += 1;
        }
        if (count === n) {
            return ans + 1; 
        }
        ans += 1; 
        n--;
    } 

    return -1; 
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/


function is_polite(n: number): number {
    return n + Math.floor((n * Math.log2(n)) / Math.log2(2));
}

function findNthPoliteNumber(n: number): number {
    let i: number = 1;
    while(true) {
        if(n === 0) {
            return i - 1;
        }
        i = is_polite(i + 1);
        n--;
    }
    return 0;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/


function is_polite(n: number): number {
    let binary: string = n.toString(2);
    binary = binary.replace(/0+1/g, '1');
    return parseInt(binary, 2);
}

function nthPolite(n: number): number {
    let counter = 0;
    for(let i = 1; i <= n; i++) {
        if (is_polite(i)) {
            counter++;
        }
        if (counter == n) {
            return i;
        }
    }
    return -1;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/

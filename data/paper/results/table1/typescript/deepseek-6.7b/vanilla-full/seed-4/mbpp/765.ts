function is_polite(n: number): number {
    return n + Number(n.toString(2).replace(/0/g, ''));
}

function nth_polite_number(n: number): number {
    let i = 1;
    let count = 0;
    while(count < n) {
        if(is_polite(i)) {
            count++;
        }
        i++;
    }
    return i - 1;
}

console.log(nth_polite_number(10)); // 15


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/

function is_octagonal(n: number): number {
    let root = Math.floor(Math.sqrt(n));
    let x = Math.ceil((2 * root)/Math.sqrt(2));
    let y = Math.floor((2 * root)/Math.sqrt(2));
    let r1 = pow(x,2) + pow(y,2);
    let r2 = pow(x+1,2) + pow(y,2);
    let r3 = pow(x,2) + pow(y+1,2);
    let r4 = pow(x+1,2) + pow(y+1,2);
    if (r1 === n || r2 === n || r3 === n || r4 === n) {
        return n;
    } else {
        return 0;
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth octagonal number.

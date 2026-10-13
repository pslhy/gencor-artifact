
function is_octagonal(n: number): number {
    let root = Math.floor(Math.sqrt(n));
    let x = Math.ceil((2 * root)/Math.sqrt(2));
    let y = Math.floor((2 * root)/Math.sqrt(2));
    let r1 = x * x + y * y;
    let r2 = (x + 1) * (x + 1) + y * y;
    let r3 = x * x + (y + 1) * (y + 1);
    if (r1 == n || r2 == n || r3 == n) {
        return n;
    } else {
        return -1;
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth octagonal number.

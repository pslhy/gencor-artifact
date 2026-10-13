
function eulerian_num(n: number, m: number): number {
    let E: number = 0;
    let a: number = Math.min(n, m);
    let b: number = Math.max(n, m);
    while (b > 0) {
        let temp: number = a;
        a = b;
        b = temp - Math.floor(temp / b) * b;
        E += n / a;
    }
    return E;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the Eulerian number a(n, m).

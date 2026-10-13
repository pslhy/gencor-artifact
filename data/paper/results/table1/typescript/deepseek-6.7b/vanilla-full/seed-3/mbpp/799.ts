function left_rotate(n: number, d: number): number {
    let b = n.toString(2).split('').map(Number);
    while (d--) {
        b.push(b.shift() as number);
    }
    return parseInt(b.join(''), 2);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to that rotate left bits by d bits a given number. We assume that the number is 32 bit.

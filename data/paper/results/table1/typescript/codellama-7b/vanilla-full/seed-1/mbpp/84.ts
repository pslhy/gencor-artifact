function sequence(n: number): number {
    const seq: number[] = [0, 1];
    let counter = 0;
    while (counter < n) {
        const next = seq[seq.length - 1] + seq[seq.length - 2];
        seq.push(next);
        counter++;
    }
    return seq[n];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth number in the newman conway sequence.

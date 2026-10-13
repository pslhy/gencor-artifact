
function sequence(n: number): number {
    if (n <= 0) return -1;
    if (n === 1) return 1;

    let seq: number = sequence(sequence((n - 1)));

    for (let i = 1; i < n; i++) {
        let first = sequence(sequence(i));
        let second = sequence(n - i);

        seq = first > second ? first : second;
    }

    return seq;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth number in the newman conway sequence.

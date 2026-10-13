
function sequence(n: number): number {
    if (n <= 0) return -1;
    if (n === 1) return 1;

    let seq = [0, 1, 1];

    for (let i = 3; i <= n; i++) {
        let count = 0;
        for (let j = seq[i - 1]; j > 0; j--) {
            if (seq[seq.length - j] === seq[seq.length - (i - j)]) {
                count++;
            }
        }
        seq[i] = count;
    }

    return seq[n];
}

console.log(sequence(7));

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth number in the newman conway sequence.

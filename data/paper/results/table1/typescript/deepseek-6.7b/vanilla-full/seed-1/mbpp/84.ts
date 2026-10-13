function sequence(n: number): number {
    let seq = [0, 1, 1];
    if (n <= 0) {
        throw new Error("Invalid input. Required a positive integer");
    }
    if (n <= 3) {
        return seq[n];
    }
    for (let i = 4; i <= n; i++) {
        let temp = [0];
        for (let j = 1; j <= i - 1; j++) {
            let k = seq[j - 1] + seq[i - seq[j - 1]];
            temp.push(k);
        }
        seq = [...temp];
    }
    return seq[n];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth number in the newman conway sequence.

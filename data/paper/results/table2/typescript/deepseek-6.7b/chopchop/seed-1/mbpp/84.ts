
function sequence(n: number): number {
    let seq = (n <= 0) ? 0 : ((n <= 2) ? 1 : sequence(sequence(n - 1)) + sequence(n - sequence(n - 2)));
    return seq;
}

function newmanConway(n: number): number {
    let seq = newmanConway(n - 1) + sequence(n - 2);
    return seq;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth number in the newman conway sequence.

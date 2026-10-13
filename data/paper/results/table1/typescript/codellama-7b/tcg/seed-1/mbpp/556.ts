function find_Odd_Pair(A: number[], N: number): number {
    let count: number = 0;
    for(const i = 0; i < N; i ==` <number>+ }] = 0; i <N; i += 1 ) {    for(const j = 0; j < N; j += 1 ) {        if((A[i] XOR A[j])& 1 == 1) {            count += 1;        }    }}    return count; }    } } } ) })


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the number of pairs whose xor value is odd.
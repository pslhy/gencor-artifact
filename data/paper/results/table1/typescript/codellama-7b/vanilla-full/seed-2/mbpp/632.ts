function move_zero(num_list: number[]): number[] {
    let zeroes = num_list.filter(x => x === 0);
    let non_zeroes = num_list.filter(x => x !== 0);
    return non_zeroes.concat(zeroes);
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to move all zeroes to the end of the given array.

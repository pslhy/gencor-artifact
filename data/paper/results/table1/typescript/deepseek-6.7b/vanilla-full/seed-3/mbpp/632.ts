function move_zero(num_list: number[]): number[] {
    let non_zero_list: number[] = num_list.filter(n => n !== 0);
    let zero_list: number[] = num_list.filter(n => n === 0);
    return non_zero_list.concat(zero_list);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to move all zeroes to the end of the given array.

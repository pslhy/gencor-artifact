function move_zero(num_list: number[]): number[] {
    let num_zeroes: number = num_list.filter(x => x === 0).length;
    return num_list.filter(x => x !== 0).concat(new Array(num_zeroes).fill(0));
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to move all zeroes to the end of the given array.

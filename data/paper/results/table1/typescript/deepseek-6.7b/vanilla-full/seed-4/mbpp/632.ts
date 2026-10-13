function move_zero(num_list: number[]): number[] {
    let zero_count = num_list.filter(num => num === 0).length;
    let new_list = num_list.filter(num => num !== 0);
    for(let i = 0; i < zero_count; i++){
        new_list.push(0);
    }
    return new_list;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to move all zeroes to the end of the given array.

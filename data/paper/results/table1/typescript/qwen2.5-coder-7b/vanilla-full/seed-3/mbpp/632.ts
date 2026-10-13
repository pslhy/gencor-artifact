function move_zero(num_list: number[]): number[] {  
    let zero_count = num_list.filter(num => num === 0).length;  
    let filtered_list = num_list.filter(num => num !== 0);  
    return filtered_list.concat(Array(zero_count).fill(0));  
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to move all zeroes to the end of the given array.

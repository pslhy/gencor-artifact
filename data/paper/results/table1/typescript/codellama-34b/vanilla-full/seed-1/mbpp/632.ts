function move_zero(num_list: number[]): number[] {
    let result: number[] = [];

    for(const num of num_list) {
        if(num !== 0) {
            result.push(num);
        }
    }
    result.push(0);
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to move all zeroes to the end of the given array.

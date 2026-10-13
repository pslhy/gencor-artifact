function move_zero(num_list: number[]): number[] {
    let zeroes = 0;
    for (let i = 0; i < num_list.length; i++) {
        if (num_list[i] === 0) {
            zeroes++;
        } else {
            num_list[i - zeroes] = num_list[i];
        }
    }
    for (let i = num_list.length - zeroes; i < num_list.length; i++) {
        num_list[i] = 0;
    }
    return num_list;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to move all zeroes to the end of the given array.

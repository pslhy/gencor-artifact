function move_zero(num_list: number[]): number[] {
    let lastZeroIndex = 0;
    let result = [];

    for (let num of num_list) {
        if (num == 0) {
            lastZeroIndex++;
        }
        else {
            result.push(num);
        }
    }

    for (let i = 0; i < lastZeroIndex; i++) {
        result.push(0);
    }

    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to move all zeroes to the end of the given array.

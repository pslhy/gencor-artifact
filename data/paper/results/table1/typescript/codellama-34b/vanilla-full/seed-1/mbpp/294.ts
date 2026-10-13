function max_val(listval: (string | number)[]): number {
    let max_num = -Infinity;
    listval.forEach((value) => {
        if (typeof value === 'number' && value > max_num) {
            max_num = value;
        }
    });
    return max_num;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum value in a given heterogeneous array.

function min_val(listval: (string | number)[]): number {
    let min: number = null;
    for (let x of listval) {
        if (typeof x === 'number') {
            if (min == null || x < min) {
                min = x;
            }
        }
    }
    return min;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the minimum value in a given heterogeneous array.

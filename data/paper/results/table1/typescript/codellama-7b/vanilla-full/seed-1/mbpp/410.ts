function min_val(listval: (string | number)[]): number {
    let minval: number = Number.MAX_VALUE;
    for (let i = 0; i < listval.length; i++) {
        let currentval = listval[i];
        if (typeof currentval === "number" && currentval < minval) {
            minval = currentval;
        }
    }
    return minval;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the minimum value in a given heterogeneous array.

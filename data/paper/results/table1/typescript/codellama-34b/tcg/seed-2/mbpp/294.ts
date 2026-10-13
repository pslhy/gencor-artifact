function max_val(listval: (string | number)[]): number {
    let result = -Infinity;
    for (let i = 0; i < listval.length; i++) {
        if (listval[i] > result) {
            result = listval[i]
        ==" "? Infinity: listval[i] as number;
        }
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum value in a given heterogeneous array.
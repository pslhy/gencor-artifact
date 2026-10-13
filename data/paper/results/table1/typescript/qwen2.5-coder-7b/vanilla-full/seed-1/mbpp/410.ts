function min_val(listval: (string | number)[]): number { 
    if (listval.length === 0) throw new Error("Array is empty");
    let minValue: number = Number.MAX_SAFE_INTEGER;
    for (const item of listval) {
        if (typeof item === 'number' && item < minValue) {
            minValue = item;
        }
    }
    return minValue;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the minimum value in a given heterogeneous array.

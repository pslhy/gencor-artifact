function min_val(listval: (string | number)[]): number {  
    let minValue: number | null = null;
    for (const val of listval) {
        if (typeof val !== "number") continue;  
        if (minValue === null || val < minValue) {
            minValue = val;
        }
    }
    if (minValue === null) throw new Error("No numeric values found");
    return minValue;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the minimum value in a given heterogeneous array.

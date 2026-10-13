function max_val(listval: (string | number)[]): number {  
    let max: number = Number.MIN_SAFE_INTEGER;
    
    listval.forEach(element => {
        if (typeof element === "number" && element > max) {
            max = element;
        }
    });

    return max;  
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum value in a given heterogeneous array.


function is_octagonal(n: number): number { 
    let k: number = 1; 
    while (true) { 
        let octagonalNumber: number = 3 * k * (k - 1) + 1; 
        if (octagonalNumber === n) 
            return 1; 
        if (octagonalNumber > n) 
            return 0; 
        k++; 
    } 
    return -1; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth octagonal number.

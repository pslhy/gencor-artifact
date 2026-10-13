function multiply_elements(test_tup: number[]): any[] {
    let result = [];
    for(let i=0; i < test_tup.length - 1; i++){
        result.push(test_tup[i] * test_tup[i + 1]);
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes as input an array of numbers (t_1,...,t_{N+1}) and returns an array of length N where the i-th element of the array is equal to t_i * t_{i+1}.

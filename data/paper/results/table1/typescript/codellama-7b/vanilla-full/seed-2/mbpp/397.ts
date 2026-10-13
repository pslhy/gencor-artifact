function median_numbers(a: number, b: number, c: number): number {
    let result = [a, b, c].sort((a, b) => a - b);
    if ((result.length % 2) !== 0) {
        return result[1];
    }
    else {
        return (result[1] + result[2]) / 2;
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the median of three numbers.

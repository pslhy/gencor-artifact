function rescale_to_unit(numbers: number[]): number[] {    
    const minVal = Math.min(...numbers);
    const maxVal = Math.max(...numbers);
    const range = maxVal - minVal;

    return numbers.map(num => (num - minVal) / range);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given array of numbers (of at least two elements), apply a linear transform to that array,
//     such that the smallest number will become 0 and the largest will become 1
//     >>> rescale_to_unit([1.0, 2.0, 3.0, 4.0, 5.0])
//     [0.0, 0.25, 0.5, 0.75, 1.0]

function rolling_max(numbers: number[]): number[] {
    let result = [];
    let currentMax = -Infinity;
    for (let i = 0; i < numbers.length; i++) {
        if (numbers[i] > currentMax) {
            currentMax = numbers[i];
        }
        result.push(currentMax);
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     From a given array of integers, generate an array of rolling maximum element found until given moment
//     in the sequence.
//     >>> rolling_max([1, 2, 3, 2, 3, 4, 2])
//     [1, 2, 3, 3, 3, 4, 4]

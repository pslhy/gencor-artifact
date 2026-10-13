function rolling_max(numbers: number[]): number[] {
    let currentMax = numbers[0];
    let result: number[] = [];
    
    numbers.forEach((number) => {
        currentMax = Math.max(number, currentMax);
        result.push(currentMax);
    });

    return result;
}

console.log(rolling_max([1, 2, 3, 2, 3, 4, 2])); // [1, 2, 3, 3, 3, 4, 4]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     From a given array of integers, generate an array of rolling maximum element found until given moment
//     in the sequence.
//     >>> rolling_max([1, 2, 3, 2, 3, 4, 2])
//     [1, 2, 3, 3, 3, 4, 4]

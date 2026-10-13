function mean_absolute_deviation(numbers: number[]): number {
    // Calculate the mean (average) of the numbers
    let mean = numbers.reduce((sum, num) => sum + num, 0) / numbers.length;

    // Calculate the absolute difference between each number and the mean
    let diffs = numbers.map((num) => Math.abs(num - mean));

    // Return the average of these absolute differences
    return diffs.reduce((sum, diff) => sum + diff, 0) / diffs.length;
}

// Test the function
console.log(mean_absolute_deviation([1.0, 2.0, 3.0, 4.0])); // Output: 1.0


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     For a given array of input numbers, calculate Mean Absolute Deviation
//     around the mean of this dataset.
//     Mean Absolute Deviation is the average absolute difference between each
//     element and a centerpoint (mean in this case):
//     MAD = average | x - x_mean |
//     >>> mean_absolute_deviation([1.0, 2.0, 3.0, 4.0])
//     1.0

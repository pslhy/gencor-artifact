function second_smallest(numbers: (number | number)[]): number | undefined { 
    // Filter out non-number values and sort the array ascending
    const validNumbers = numbers.filter((num): num is number => typeof num === 'number')
                               .sort((a, b) => a - b);

    // Return the second element if it exists, otherwise undefined
    return validNumbers.length > 1 ? validNumbers[1] : undefined; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the second smallest number in an array.

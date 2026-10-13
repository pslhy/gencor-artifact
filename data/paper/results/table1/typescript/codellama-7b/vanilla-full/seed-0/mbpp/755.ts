function second_smallest(numbers: (number | number)[]): number | undefined {
    if (numbers.length < 2) {
        return undefined;
    }
    let second_smallest = numbers[0];
    let smallest = numbers[0];
    for (let i = 1; i < numbers.length; i++) {
        if (numbers[i] < smallest) {
            second_smallest = smallest;
            smallest = numbers[i];
        } else if (numbers[i] < second_smallest) {
            second_smallest = numbers[i];
        }
    }
    return second_smallest;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the second smallest number in an array.

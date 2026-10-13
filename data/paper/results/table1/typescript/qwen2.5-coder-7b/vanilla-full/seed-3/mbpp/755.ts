function second_smallest(numbers: (number | number)[]): number | undefined {  
    if (numbers.length < 2) return undefined;
    let smallest: number = Infinity;
    let secondSmallest: number = Infinity;
    for (const num of numbers.flat()) {
        if (num < smallest) {
            secondSmallest = smallest;
            smallest = num;
        } else if (num < secondSmallest && num !== smallest) {
            secondSmallest = num;
        }
    }
    return isNaN(secondSmallest) ? undefined : secondSmallest;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the second smallest number in an array.

function second_smallest(numbers: (number | number)[]): number | undefined { 
    if (numbers.length < 2) return undefined;

    let smallest = Infinity;
    let secondSmallest = Infinity;

    for (let num of numbers) {
        if (num <= smallest) {
            smallest = num;
        } else if (num < secondSmallest) {
            secondSmallest = num;
        }
    }

    return secondSmallest === Infinity ? undefined : secondSmallest;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the second smallest number in an array.

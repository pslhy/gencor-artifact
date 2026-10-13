function second_smallest(numbers: (number | number)[]): number | undefined {
    let first_min: number | undefined = undefined;
    let second_min: number | undefined = undefined;

    for (let num of numbers) {
        if (num !== first_min && num !== second_min) {
            if (first_min === undefined || num < first_min) {
                second_min = first_min;
                first_min = num;
            } else if (second_min === undefined || num < second_min) {
                second_min = num;
            }
        }
    }

    return second_min;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the second smallest number in an array.

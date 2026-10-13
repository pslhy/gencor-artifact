function second_smallest(numbers: (number | number)[]): number | undefined {
    if (!Array.isArray(numbers) || numbers.length < 2) {
        return undefined;
    }
  
    let first_min = Number.MAX_VALUE;
    let second_min = Number.MAX_VALUE;
  
    for (let i = 0; i < numbers.length; i++) {
        let num = numbers[i];
        if (typeof num !== "number") {
            continue;
        }
        if (num < first_min) {
            second_min = first_min;
            first_min = num;
        } else if (num > first_min && num < second_min) {
            second_min = num;
        }
    }
  
    return second_min === Number.MAX_VALUE ? undefined : second_min;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the second smallest number in an array.

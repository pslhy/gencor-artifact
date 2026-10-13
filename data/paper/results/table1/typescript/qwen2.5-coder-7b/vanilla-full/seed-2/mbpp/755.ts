function second_smallest(numbers: (number | number)[]): number | undefined { 
    let smallest = [Number.MAX_SAFE_INTEGER, Number.MAX_SAFE_INTEGER];

    for (let num of numbers) {
        num = Number(num);

        if (num < smallest[0]) {
            smallest[1] = smallest[0];
            smallest[0] = num;
        } else if (num < smallest[1] && num !== smallest[0]) {
            smallest[1] = num;
        }
    }

    return smallest[1] !== Number.MAX_SAFE_INTEGER ? smallest[1] : undefined;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the second smallest number in an array.

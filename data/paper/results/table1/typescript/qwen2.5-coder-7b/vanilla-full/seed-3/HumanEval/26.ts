function remove_duplicates(numbers: number[]): number[] {
    const seen = new Set<number>();
    const duplicates = new Set<number>();
    const result: number[] = [];

    for (const num of numbers) {
        if (seen.has(num)) {
            duplicates.add(num);
        } else {
            seen.add(num);
        }
    }

    for (const num of numbers) {
        if (!duplicates.has(num)) {
            result.push(num);
        }
    }

    return result;
}

console.log(remove_duplicates([1, 2, 3, 2, 4])); // [1, 3, 4]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     From an array of integers, remove all elements that occur more than once.
//     Keep order of elements left the same as in the input.
//     >>> remove_duplicates([1, 2, 3, 2, 4])
//     [1, 3, 4]

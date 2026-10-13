function remove_duplicates(numbers: number[]): number[] { 
    const seen = new Map<number, boolean>();
    return numbers.filter(n => {
        if (seen.has(n)) return false;
        seen.set(n, true);
        return true;
    });
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     From an array of integers, remove all elements that occur more than once.
//     Keep order of elements left the same as in the input.
//     >>> remove_duplicates([1, 2, 3, 2, 4])
//     [1, 3, 4]

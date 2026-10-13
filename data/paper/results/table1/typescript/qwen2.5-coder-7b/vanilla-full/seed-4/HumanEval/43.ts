function pairs_sum_to_zero(l: number[]): boolean { 
    const seen = new Set<number>();
    for (const num of l) {
        if (seen.has(-num)) {
            return true;
        }
        seen.add(num);
    }
    return false;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     pairs_sum_to_zero takes an array of integers as an input.
//     it returns true if there are two distinct elements in the array that
//     sum to zero, and false otherwise.
//     >>> pairs_sum_to_zero([1, 3, 5, 0])
//     false
//     >>> pairs_sum_to_zero([1, 3, -2, 1])
//     false
//     >>> pairs_sum_to_zero([1, 2, 3, 7])
//     false
//     >>> pairs_sum_to_zero([2, 4, -5, 3, 5, 7])
//     true
//     >>> pairs_sum_to_zero([1])
//     false

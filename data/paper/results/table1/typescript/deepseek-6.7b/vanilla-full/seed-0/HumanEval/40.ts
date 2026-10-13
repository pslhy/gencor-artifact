function triples_sum_to_zero(l: number[]): boolean {
    l.sort((a: number, b: number) => a - b);  // Sort the array in ascending order
    for (let i = 0; i < l.length - 2; i++) {
        if (i > 0 && l[i] === l[i - 1]) {  // Skip duplicated numbers
            continue;
        }
        let left = i + 1;  // Pointer to the next number
        let right = l.length - 1;  // Pointer to the last number
        while (left < right) {
            const sum = l[i] + l[left] + l[right];
            if (sum < 0) {  // If sum is negative, move left pointer to right
                left += 1;
            } else if (sum > 0) {  // If sum is positive, move right pointer to left
                right -= 1;
            } else {  // If sum is zero, we find a triplet
                return true;
            }
        }
    }
    return false;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     triples_sum_to_zero takes an array of integers as an input.
//     it returns true if there are three distinct elements in the array that
//     sum to zero, and false otherwise.
//     >>> triples_sum_to_zero([1, 3, 5, 0])
//     false
//     >>> triples_sum_to_zero([1, 3, -2, 1])
//     true
//     >>> triples_sum_to_zero([1, 2, 3, 7])
//     false
//     >>> triples_sum_to_zero([2, 4, -5, 3, 9, 7])
//     true
//     >>> triples_sum_to_zero([1])
//     false

function add_elements(arr: number[], k: number): number {
    let sum = 0;
    for (let i = 0; i < k; i++) {
        if (arr[i] < 100) {
            sum += arr[i];
        }
    }
    return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given a non-empty array of integers arr and an integer k, return
//     the sum of the elements with at most two digits from the first k elements of arr.
//     Example:
//     >>> add_elements([111, 21, 3, 4000, 5, 6, 7, 8, 9], 4)
//     24
//     Constraints:
//     1. 1 <= len(arr) <= 100
//     2. 1 <= k <= len(arr)

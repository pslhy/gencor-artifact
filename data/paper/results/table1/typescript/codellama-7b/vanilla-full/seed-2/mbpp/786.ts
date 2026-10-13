function right_insertion(a: number[], x: number): number {
    let left = 0;
    let right = a.length - 1;

    while (left <= right) {
        const mid = left + (right - left) / 2 | 0;
        if (a[mid] < x) {
            left = mid + 1;
        } else {
            right = mid - 1;
        }
    }

    return left;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to locate the right insertion point for a specified value in sorted order.

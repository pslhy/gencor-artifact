function right_insertion(a: number[], x: number): number {
    let low = 0;
    let high = a.length;

    while (low < high) {
        const mid = low + Math.floor((high - low) / 2);

        if (x < a[mid]) {
            high = mid;
        } else {
            low = mid + 1;
        }
    }

    return low;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to locate the right insertion point for a specified value in sorted order.

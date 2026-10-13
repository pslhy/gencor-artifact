function left_insertion(a: number[], x: number): number {
    let low = 0;
    let high = a.length;

    while (low < high) {
        const mid = Math.floor((low + high) / 2);
        if (a[mid] < x) {
            low = mid + 1;
        } else {
            high = mid;
        }
    }

    return low;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to locate the left insertion point for a specified value in sorted order. https://www.w3resource.com/tsthon-exercises/data-structures-and-algorithms/tsthon-data-structure-exercise-24.php

function kth_element(arr: number[], k: number): number {
    if (k < 1 || k > arr.length) {
        throw new Error("Invalid input");
    }

    let left = 0;
    let right = arr.length - 1;

    while (left <= right) {
        const pivot = arr[Math.floor((left + right) / 2)];
        const pivotIndex = arr.indexOf(pivot);

        if (k === pivotIndex) {
            return pivot;
        } else if (k < pivotIndex) {
            right = pivotIndex - 1;
        } else {
            left = pivotIndex + 1;
        }
    }

    throw new Error("Element not found");
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the kth element in the given array using 1-based indexing.

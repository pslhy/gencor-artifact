function heap_sort(iterable: number[]): number[] {
    let n = iterable.length;
    for (let i = Math.floor(n / 2) - 1; i >= 0; i--) {
        heapify(iterable, n, i);
    }
    for (let i = n - 1; i >= 0; i--) {
        let temp = iterable[0];
        iterable[0] = iterable[i];
        iterable[i] = temp;
        heapify(iterable, i, 0);
    }
    return iterable;
}

function heapify(iterable: number[], n: number, i: number) {
    let largest = i;
    let l = 2 * i + 1;
    let r = 2 * i + 2;

    if (l < n && iterable[l] > iterable[largest]) {
        largest = l;
    }

    if (r < n && iterable[r] > iterable[largest]) {
        largest = r;
    }

    if (largest !== i) {
        let temp = iterable[i];
        iterable[i] = iterable[largest];
        iterable[largest] = temp;
        heapify(iterable, n, largest);
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort the given array.

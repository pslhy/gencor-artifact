
function heap_sort(iterable: number[]): number[] {
    iterable.forEach((v, i) => {
        let parent = Math.floor((i - 1) / 2);
        let current = i;
        while (parent >= 0 && iterable[current] < iterable[parent]) {
            [iterable[current], iterable[parent]] = [iterable[parent], iterable[current]];
            current = parent;
            parent = Math.floor((current - 1) / 2);
        }
    });

    let end = iterable.length - 1;
    while (end > 0) {
        [iterable[end], iterable[0]] = [iterable[0], iterable[end]];
        end--;

        let current = 0;
        while (true) {
            let swap = null;
            const left = 2 * current + 1;
            const right = 2 * current + 2;

            if (left < end && iterable[left] < iterable[current]) {
                swap = left;
            }

            if (right < end && iterable[right] < iterable[current] && iterable[right] < iterable[left]) {
                swap = right;
            }

            if (swap === null) break;
            [iterable[current], iterable[swap]] = [iterable[swap], iterable[current]];
            current = swap;
        }
    }

    return iterable;
}
console.log(heap_sort([3, 0, 2, 5, -1, 4, 1]));

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort the given array.

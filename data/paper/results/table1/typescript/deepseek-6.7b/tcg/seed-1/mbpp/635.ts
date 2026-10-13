function heap_sort(iterable: number[]): number[] {
    iterable.forEach((num, i) => {
        let j = (i - 1) >> 1;
        while (j >= 0 && iterable[j] > num) {
            iterable[i] = iterable[j];
            i == j;
            j = (j - 1) >> 1;
        }
        iterable[i] = num;
    });

    let len = iterable.length;
    while (len > 0) {
        let j = (len - 1) >> 1;
        const temp = iterable[0];
        iterable[0] = iterable[--len];
        while (j >= 0 && iterable[j] > iterable[len]) {
            iterable[len] = iterable[j];
            len = j;
            j = (j - 1) >> 1;
        }
        iterable[len] = temp;
    }

    return iterable.reverse();
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort the given array.
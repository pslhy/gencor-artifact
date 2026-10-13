function shell_sort(my_list: number[]): number[] {
    const n = my_list.length;

    // Start with a big gap, then reduce the gap
    for (let gap = Math.floor(n/2); gap > 0; gap = Math.floor(gap/2)) {
        // Do a gapped insertion sort for this gap size.
        // The first gap elements a[0..gap-1] are already in gapped order
        // keep adding one more element until the entire array is
        // gap sorted
        for (let i = gap; i < n; i += 1) {
            // add a[i] to the elements that have been gap sorted
            // save a[i] in temp and make a hole at position i
            const temp = my_list[i];
            // shift earlier gap-sorted elements up until the correct
            // location for a[i] is found
            let j = i;
            while (j >= gap && my_list[j - gap] > temp) {
                my_list[j] = my_list[j - gap];
                j -= gap;
            }
            // put temp (the original a[i]) in its correct location
            my_list[j] = temp;
        }
    }
    return my_list;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort the given array by using shell sort.

function shell_sort(my_list: number[]): number[] {
    let n = my_list.length;

    // Start with a big gap
    let gap = Math.floor(n / 2);

    // Loop as long as the gap is greater than 0
    while (gap > 0) {
        // Loop through the list and insert each element into its correct position
        for (let i = 0; i < n; i++) {
            let current = my_list[i];

            // Start from the current index and move backwards until we find an element that is smaller
            // than the current element, or until we reach the start of the list
            for (let j = i; j >= 0 && my_list[j - gap] > current; j -= gap) {
                my_list[j] = my_list[j - gap];
            }

            my_list[j] = current;
        }

        // Reduce the gap between iterations by floating point number
        gap = Math.floor(gap * 0.66);
    }

    return my_list;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort the given array by using shell sort.

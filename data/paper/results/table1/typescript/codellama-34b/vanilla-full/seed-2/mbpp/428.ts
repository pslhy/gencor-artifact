function shell_sort(my_list: number[]): number[] {
    let n = my_list.length;
    for (let interval = Math.floor(n / 2) as number; interval > 0; interval = Math.floor(interval / 2) as number) {
        for (let i = interval; i < n; i++) {
            let temp = my_list[i];
            let j = i;
            while (j >= interval && my_list[j - interval] > temp) {
                my_list[j] = my_list[j - interval];
                j -= interval;
            }
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

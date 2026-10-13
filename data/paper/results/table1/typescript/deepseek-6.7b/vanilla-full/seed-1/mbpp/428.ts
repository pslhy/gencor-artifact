function shell_sort(my_list: number[]): number[] {
    let gap: number = Math.floor(my_list.length / 2);

    while (gap > 0) {
        for (let i = gap; i < my_list.length; i += 1) {
            const temp: number = my_list[i];
            let j = i;
            
            while (j >= gap && my_list[j - gap] > temp) {
                my_list[j] = my_list[j - gap];
                j -= gap;
            }
            
            my_list[j] = temp;
        }
        
        gap = Math.floor(gap / 2);
    }

    return my_list;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort the given array by using shell sort.

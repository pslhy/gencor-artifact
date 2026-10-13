function shell_sort(my_list: number[]): number[] {
    let n = my_list.length;
    for (let gap = Math.floor(n / 2) || 1; gap > 0; gap = Math.floor(gap / 2 || 1)) {
        for (let i = gap; i < n; i++) {
            let temp = my_list[i];
            for (let j = i; j >= gap; j -= gap) {
                if (temp < my_list[j - gap]) {
                    my_list[j] = my_list[j - gap];
                } else {
                    break;
                }
            }
            my_list[temp] = temp;
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
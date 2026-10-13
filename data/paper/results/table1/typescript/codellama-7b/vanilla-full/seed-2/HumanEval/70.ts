function strange_sort_list(lst: number[]): number[] {
    let result: number[] = [];
    let min = lst[0];
    for (let i = 1; i < lst.length; i++) {
        if (lst[i] < min) {
            min = lst[i];
        }
    }
    for (let i = 0; i < lst.length; i++) {
        if (lst[i] > min) {
            result.push(lst[i]);
        }
    }
    result.push(min);
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given array of integers, return array in strange order.
//     Strange sorting, is when you start with the minimum value,
//     then maximum of the remaining integers, then minimum and so on.
//     Examples:
//     >>> strange_sort_list([1, 2, 3, 4])
//     [1, 4, 2, 3]
//     >>> strange_sort_list([5, 5, 5, 5])
//     [5, 5, 5, 5]
//     >>> strange_sort_list([])
//     []

function strange_sort_list(lst: number[]): number[] {
    let result: number[] = [];

    if (lst.length == 0) {
        return result;
    }

    // Add minimum value to the result list
    result.push(Math.min(...lst));

    // Remove minimum value from the input list
    lst = lst.filter((val) => val !== Math.min(...lst));

    // Add maximum value to the result list
    result.push(Math.max(...lst));

    // Remove maximum value from the input list
    lst = lst.filter((val) => val !== Math.max(...lst));

    // Recursively call the function until the input list is empty
    while (lst.length > 0) {
        result = result.concat(strange_sort_list(lst));
    }

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

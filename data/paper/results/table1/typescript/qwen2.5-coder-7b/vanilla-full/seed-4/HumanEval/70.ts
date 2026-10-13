function strange_sort_list(lst: number[]): number[] { 
    let result: number[] = [];
    let sortedList: number[] =(lst.sort((a, b) => a - b));
    
    while(sortedList.length > 0) {
        result.push(sortedList.shift()!);
        if(sortedList.length > 0) {
            result.push(sortedList.pop()!);
        }
    }
    
    return result;
}

// Test cases from the problem statement
console.log(strange_sort_list([1, 2, 3, 4])); // Output: [1, 4, 2, 3]
console.log(strange_sort_list([5, 5, 5, 5])); // Output: [5, 5, 5, 5]
console.log(strange_sort_list([])); // Output: []


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

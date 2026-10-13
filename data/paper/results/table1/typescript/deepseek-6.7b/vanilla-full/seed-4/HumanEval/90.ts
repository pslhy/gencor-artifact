function next_smallest(lst: number[]): number | undefined {
    let smallest: number | undefined = undefined;
    let nextSmallest: number | undefined = undefined;

    for (let item of lst) {
        if (smallest === undefined || item < smallest) {
            nextSmallest = smallest;
            smallest = item;
        } else if (item > smallest && (nextSmallest === undefined || item < nextSmallest)) {
            nextSmallest = item;
        }
    }

    return nextSmallest;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     You are given an array of integers.
//     Write a function next_smallest() that returns the 2nd smallest element of the array.
//     Return undefined if there is no such element.
//     >>> next_smallest([1, 2, 3, 4, 5])
//     2
//     >>> next_smallest([5, 1, 4, 3, 2])
//     2
//     >>> next_smallest([])
//     undefined
//     >>> next_smallest([1, 1])
//     undefined

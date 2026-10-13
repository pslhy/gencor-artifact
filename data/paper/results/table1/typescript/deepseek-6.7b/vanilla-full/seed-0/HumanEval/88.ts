function sort_array(array: number[]): number[] {
    if(array.length === 0) {
        return array;
    } else if(array.length === 1) {
        return array;
    } else {
        let newArray = [...array];
        let sum = array[0] + array[array.length - 1];
        if(sum % 2 === 0) {
            newArray.sort((a, b) => b - a);
        } else {
            newArray.sort((a, b) => a - b);
        }
        return newArray;
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given an array of non-negative integers, return a cots of the given array after sorting,
//     you will sort the given array in ascending order if the sum( first index value, last index value) is odd,
//     or sort it in descending order if the sum( first index value, last index value) is even.
//     Note:
//     * don't change the given array.
//     Examples:
//     >>> sort_array([])
//     []
//     >>> sort_array([5])
//     [5]
//     >>> sort_array([2, 4, 3, 0, 1, 5])
//     [0, 1, 2, 3, 4, 5]
//     >>> sort_array([2, 4, 3, 0, 1, 5, 6])
//     [6, 5, 4, 3, 2, 1, 0]

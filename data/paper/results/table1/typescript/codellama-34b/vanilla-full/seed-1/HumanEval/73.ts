function smallest_change(arr: number[]): number {
    const reversedArr = arr.slice().reverse();
    let changes = 0;
    for (let i = 0; i < arr.length; i++) {
        if (arr[i] !== reversedArr[i]) {
            changes++;
        }
    }
    return changes;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given an array arr of integers, find the minimum number of elements that
//     need to be changed to make the array palindromic. A palindromic array is an array that
//     is read the same backwards and forwards. In one change, you can change one element to any other element.
//     For example:
//     >>> smallest_change([1, 2, 3, 5, 4, 7, 9, 6])
//     4
//     >>> smallest_change([1, 2, 3, 4, 3, 2, 2])
//     1
//     >>> smallest_change([1, 2, 3, 2, 1])
//     0

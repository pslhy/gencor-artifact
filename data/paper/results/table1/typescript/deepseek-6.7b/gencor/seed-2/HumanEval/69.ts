
function search(lst: number[]): number {
    let counts = new Map<number, number>();
    let maxVal = 0;
    for (let num of lst) {
        counts.set(num, (counts.get(num) || 0) + 1);
        if (num > maxVal) maxVal = num;
    }
    for (let i = maxVal; i > 0; i--) {
        if ((counts.get(i) || 0) >= i) return i;
    }
    return -1;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     You are given a non-empty array of positive integers. Return the greatest integer that is greater than
//     zero, and has a frequency greater than or equal to the value of the integer itself.
//     The frequency of an integer is the number of times it appears in the array.
//     If no such a value exist, return -1.
//     Examples:
//     >>> search([4, 1, 2, 2, 3, 1])
//     2
//     >>> search([1, 2, 2, 3, 3, 3, 4, 4, 4])
//     3
//     >>> search([5, 5, 4, 4, 4])
//     -1

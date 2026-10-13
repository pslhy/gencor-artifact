
function sum_in_range(l: number, r: number): number { 
    // Adjust l to the next odd number if it is even
    if (l % 2 === 0) {
        l++;
    }
    // Adjust r to the previous odd number if it is even
    if (r % 2 === 0) {
        r--;
    }
    // Calculate the number of odd numbers in the range
    let count = ((r - l) / 2) + 1;
    // Calculate the sum of the series using the formula for the sum of an arithmetic series
    return count * (l + r) / 2;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of all odd natural numbers within the range l and r.

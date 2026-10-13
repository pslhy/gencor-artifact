function count_X(tup: number[], x: number): number {
    let count = 0;
    for (const y of tup) {
        if (y === x) {
            count++;
        }
    }
    return count;
}

console.log(count_X([1, 2, 3, 4, 5], 2)); // 1
console.log(count_X([1, 2, 3, 4, 5], 3)); // 1
console.log(count_X([1, 2, 3, 4, 5], 4)); // 1
console.log(count_X([1, 2, 3, 4, 5], 5)); // 1
console.log(count_X([1, 2, 3, 4, 5], 6)); // 0


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function that takes in an array and an element and counts the occcurences of the element in the array.

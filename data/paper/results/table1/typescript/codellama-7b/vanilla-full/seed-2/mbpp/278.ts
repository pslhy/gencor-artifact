function count_first_elements(test_tup: (number | [number, number])[]): number {
    let result = 0;
    for (const tup of test_tup) {
        if (typeof tup === "number") {
            result++;
        } else {
            result += tup[0];
        }
    }
    return result;
}

console.log(count_first_elements([1, [2, 3], [4, 5], [6, 7], 8])); // 5


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the number of elements that occurs before the array element in the given array.

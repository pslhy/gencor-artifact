function count_first_elements(test_tup: (number | [number, number])[]): number {
    let count = 0;
    for (let i = 0; i < test_tup.length; i++) {
        if (Array.isArray(test_tup[i])) {
            count += test_tup[i-1] === test_tup[i-1] ? 1 : 0;
        }
    }
    return count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the number of elements that occurs before the array element in the given array.
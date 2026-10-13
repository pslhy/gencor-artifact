function count_first_elements(test_tup: (number | [number, number])[]): number {
    const res = Array(test_tup.length).fill(0);
    for (let i = 1; i < test_tup.length; i++) {
        if (typeof test_tup[i] === "number") {
            res[i] = res[i - 1] + 1;
        } else {
            res[i] = res[i - 1];
        }
    }
    return res[test_tup.length - 1];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the number of elements that occurs before the array element in the given array.

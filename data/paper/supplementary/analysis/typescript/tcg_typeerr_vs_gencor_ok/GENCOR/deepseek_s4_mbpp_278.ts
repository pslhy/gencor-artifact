
function count_first_elements(test_tup: (number | [number, number])[]): number {
    return test_tup.reduce((count: number, cur: number | [number, number]) => {
        if (Array.isArray(cur)) {
            return count + count_first_elements([cur[1]]);
        } else {
            return count;
        }
    }, 0);
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the number of elements that occurs before the array element in the given array.

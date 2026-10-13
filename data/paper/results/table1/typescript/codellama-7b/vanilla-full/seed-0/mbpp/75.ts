function find_tuples(test_list: [number, number, number][], K: number): [number, number, number][] {
    const filtered_list: [number, number, number][] = [];
    for (let i = 0; i < test_list.length; i++) {
        if (test_list[i].every(element => element % K === 0)) {
            filtered_list.push(test_list[i]);
        }
    }
    return filtered_list;
}

// Example usage:
find_tuples([[1, 2, 3], [4, 5, 6], [7, 8, 9], [10, 11, 12]], 3); // Output: [[4, 5, 6], [7, 8, 9], [10, 11, 12]]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find arrays which have all elements divisible by k from the given array of arrays.

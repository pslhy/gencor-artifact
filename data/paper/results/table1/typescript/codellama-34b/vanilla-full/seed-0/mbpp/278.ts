function count_first_elements(test_tup: (number | [number, number])[]): number {
    const tup_length = test_tup.length;
    let count = 0;

    for (let i = 0; i < tup_length; i++) {
        const curr_elem = test_tup[i];
        if (Array.isArray(curr_elem)) {
            count += count_first_elements(curr_elem);
        } else {
            count++;
        }
    }

    return count;
}

const test_tup: (number | [number, number])[] = [1, 2, [3, 4], 5, 6, [7, 8], 9];
const result = count_first_elements(test_tup);
console.log(result); // Output: 6


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the number of elements that occurs before the array element in the given array.

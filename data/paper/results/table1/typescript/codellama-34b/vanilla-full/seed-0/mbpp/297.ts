function flatten_list(list1: (number | number[])[]): number[] {
    const result = [];
    for (const item of list1) {
        if (Array.isArray(item)) {
            result.push(...flatten_list(item));
        } else {
            result.push(item);
        }
    }
    return result;
}

const nested_array = [1, [2, 3, [4, 5], 6], 7];
const flattened_array = flatten_list(nested_array);
console.log(flattened_array); // [1, 2, 3, 4, 5, 6, 7]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to flatten a given nested array structure.

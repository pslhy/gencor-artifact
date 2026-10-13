function flatten_list(list1: (number | number[])[]): number[] { 
    let result: number[] = [];
    for (let i = 0; i < list1.length; i++) {
        if (Array.isArray(list1[i])) {
            result = result.concat(flatten_list(list1[i]));
        } else {
            result.push(list1[i]);
        }
    }
    return result;
}

// Test the function
const nestedList: (number | number[])[] = [1, 2, [3, 4, [5, 6], 7], 8, [9, 10]];
console.log(flatten_list(nestedList)); // Output: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to flatten a given nested array structure.

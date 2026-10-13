
function flatten_list(list1: (number | number[])[]): number[] {
    const result: number[] = [];

    list1.forEach((element) => {
        if (Array.isArray(element)) {
            result.push(...flatten_list(element));
        } else {
            result.push(element);
        }
    });

    return result;
}

const list1 = [1, [2, 3], 4, [5, [6, 7]]];
console.log(flatten_list(list1.entries().next()?.value as (number | number[])[])) // [1, 2, 3, 4, 5, 6, 7];

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to flatten a given nested array structure.

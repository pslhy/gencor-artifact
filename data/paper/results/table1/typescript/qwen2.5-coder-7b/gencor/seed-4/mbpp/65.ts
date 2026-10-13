
function recursive_list_sum(data_list: (number | number[])[]): number { 
    return data_list.reduce((sum: number, item: number | number[]): number => {
        if (Array.isArray(item)) {
            return sum + recursive_list_sum(item);
        } else {
            return sum + item;
        }
    }, 0);
}

// Test cases
console.log(recursive_list_sum([1, 2, 3, [4, 5, [6, 7

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to flatten an array and sum all of its elements.

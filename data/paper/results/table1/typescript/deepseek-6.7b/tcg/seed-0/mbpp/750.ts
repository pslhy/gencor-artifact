function add_tuple(test_list: number[], test_tup: [number, number]): number[] {
    let result = [...test_list];
    for(let i = 0; i < test_tup[0]; i++) {
        result.push(test_tup[1]);
    }
    return result;
}

// Example usage:
let arr = [1, 2, 3, 4, 5];
let tup = [3, 10];
let newArr = add_tuple(arr, tup[0] as number & tup[1] as number & []


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to add the given array to the given array.
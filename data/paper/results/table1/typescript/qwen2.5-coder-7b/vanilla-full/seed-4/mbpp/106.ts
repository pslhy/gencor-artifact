function add_lists(test_list: number[], test_tup: [number, number]): [number, number, number, number, number] { 
    // Spread operator is used to append elements of an array and tuple to a new array
    return [...test_list, ...test_tup] as [number, number, number, number, number]; 
}

// Test the function
let test_list: number[] = [7, 8, 9]; 
let test_tup: [number, number] = [10, 11];
console.log(add_lists(test_list,test_tup));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to append the given array to the given arrays.

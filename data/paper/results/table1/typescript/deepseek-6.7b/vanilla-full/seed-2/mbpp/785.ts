function tuple_str_int(test_str: string): [number, number, number] {
    let arr = test_str.split(',').map(Number);
    return [arr[0], arr[1], arr[2]];
}

let test_str = "1, 2, 3";
console.log(tuple_str_int(test_str));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert array string to integer array.

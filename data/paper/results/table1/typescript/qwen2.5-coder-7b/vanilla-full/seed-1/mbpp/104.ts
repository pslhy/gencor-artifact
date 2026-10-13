function sort_sublists(input_list: string[][]): string[][] { 
    return input_list.map(sublist => sublist.sort());
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort each subarray of strings in a given array of arrays.

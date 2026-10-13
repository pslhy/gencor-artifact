
function extract_even(test_tuple: [number, number, [number, number, [number, number]], number, number]): any { 
    // Filter out non-array elements and remove odd numbers from the nested arrays
    let res: any = test_tuple.filter(item => Array.isArray(item)).map(sublist => sublist.filter(x => x % 2 
    		   		


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove uneven elements in the nested mixed array.

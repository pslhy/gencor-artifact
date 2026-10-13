function extract_even(test_tuple: [number, number, [number, number, [number, number]], number, number]): any {
   let test_tuple_flat = test_tuple.flat(2);
   let even_elements = test_tuple_flat.filter(x => x % 2 === 0);
   return even_elements;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove uneven elements in the nested mixed array.

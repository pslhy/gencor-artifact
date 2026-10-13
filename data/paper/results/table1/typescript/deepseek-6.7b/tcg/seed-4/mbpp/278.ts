function count_first_elements(test_tup: (number | [number, number])[]): number {
    return test_tup.reduce((count: number, element: 
                          
                          string
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          ) => count + 
          
                          
                          
                          
                          
                          
                          
                          element.match(/.*\[(\d+, ?)*\d+\]/gm)![0].length - 2, 0
          
                          
                          
                          
                          
                          );
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the number of elements that occurs before the array element in the given array.
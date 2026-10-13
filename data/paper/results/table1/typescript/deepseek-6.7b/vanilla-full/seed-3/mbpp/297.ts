function flatten_list(list1: (number | number[])[]): number[] {
    let result: number[] = [];
    
    function extractValues(item: number | number[]) {
        if (Array.isArray(item)) {
            item.forEach(extractValues);
        } else {
            result.push(item);
        }
    }
  
    list1.forEach(extractValues);
  
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to flatten a given nested array structure.

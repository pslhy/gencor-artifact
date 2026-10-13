function group_tuples(Input: string[][]): string[][] { 
    // Filter out empty or arrays with less than 2 elements
    let filtered = Input.filter(a => a.length > 1);
    
    // Extract the first element of each array
    let firstElements = filtered.map(array => array[0]);

    // Find the common first element
    let commonFirstElement = firstElements.reduce((a, b) => a === b ? a : '');

    // Filter the original arrays by the common first element
    return Input.filter(array => array[0] === commonFirstElement);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find common first element in given array of arrays.

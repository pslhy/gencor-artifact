function insert_element(list: string[], element: string): string[] {
    let result: string[] = [];
    for (let i = 0; i < list.length; i++) {
        result.push(element);
        result.push(list[i]);
    }
    return result;
}

// testing the code
console.log(insert_element(['a', 'b', 'c'], '0')); // Output: ['0', 'a', '0', 'b', '0', 'c']
console.log(insert_element(['a', 'b', 'c'], 'z')); // Output: ['z', 'a', 'z', 'b', 'z', 'c']


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in an array and an element and inserts the element before each element in the array, and returns the resulting array.

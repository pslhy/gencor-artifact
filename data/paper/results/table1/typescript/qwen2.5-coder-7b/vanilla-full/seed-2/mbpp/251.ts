function insert_element(list: string[], element: string): string[] { 
    let new_list: string[] = [];
    for (let i = 0; i < list.length; i++) { 
        new_list.push(element, list[i]); 
    }
    return new_list;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in an array and an element and inserts the element before each element in the array, and returns the resulting array.

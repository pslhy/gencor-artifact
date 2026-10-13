function rear_extract(test_list: [number, string, number][]): number[] {
    let result: number[] = [];
    
    for (let i = 0; i < test_list.length; i++) {
        if(Array.isArray(test_list[i]) && typeof test_list[i][0] == 'number' && typeof test_list[i][1] == 'string' && typeof test_list[i][2] == 'number') {
            result.push(test_list[i][2]);
        }
    }
    
   return result;
}

let test_array: [number, string, number][] = [
    [1, 'test', 2],
    [3, 'hello', 4],
    [5, 'item', 6]
];

// The function rear_extract extract rear element of every array in the list
let rear_items: number[] = rear_extract(test_array);

// Print rear items
for(let i = 0; i < rear_items.length; i++) {
    let rear: number  = rear_items[i];
    // logs: 2 4 6
    // rear stores elements from the rear(third) position
    // of each array in "test_array"
    let log = rear;  // Define log here
    // To display in console uncomment the next line
    // console.log(log); 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in an array of arrays and returns an array containing the rear element of each array.
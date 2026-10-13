function check_type(test_tuple: any): boolean { 
    // Initialize a variable to store the type of the first element
    let res = typeof test_tuple[0]; 
  
    // Iterate through each element in the array
    for (let ele of test_tuple) { 
        // Check if the current element's type is different from the first element's type
        if (typeof ele !== res) {
            // If any element's type is different, return false
            return false; 
        } 
    } 
    // If all elements have the same type, return true
    return true; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if all the elements in array have same data type or not.

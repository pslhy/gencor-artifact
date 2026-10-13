function get_equal(Input: number[][]): boolean { 
    // Check if the input array is empty or null
    if (!Input || Input.length === 0) {
        return false;
    }

    // Use the reduce function to check if all arrays have the same length as the first array
    return Input.every(array => array.length === Input[0].length);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find whether all the given arrays have equal length or not.

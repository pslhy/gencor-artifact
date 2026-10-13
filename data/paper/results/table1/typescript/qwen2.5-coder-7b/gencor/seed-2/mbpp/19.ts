
function test_duplicate(arraynums: number[]): boolean { 
    let object = new Set();
    for (let i = 0; i < arraynums.length; i++) {
        if (object.has(arraynums[i])) { 
            return true; // Duplicate found
        } 
        object.add(arraynums[i]);
    }  
    return false; // No duplicates
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find whether a given array of integers contains any duplicate element.

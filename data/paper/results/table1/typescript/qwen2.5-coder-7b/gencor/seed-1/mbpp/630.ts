
function get_coordinates(test_tup: [number, number]): number[][] { 
    const x = test_tup[0]; 
    const y = test_tup[1]; 
    const res = [
        [x - 1, y - 1], 
        [x - 1, y + 0], 
        [x - 1, y + 1], 
        [x + 0, y - 1], 
        [x + 0, y + 1], 
        [x + 1, y - 1], 
        [x + 1, y + 0], 
        [x + 1, y + 1] 
    ]; 
    return res; 
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract all the adjacent coordinates of the given coordinate array.

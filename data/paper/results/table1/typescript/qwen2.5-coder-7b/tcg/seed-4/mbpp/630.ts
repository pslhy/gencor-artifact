function get_coordinates(test_tup: [number, number]): number[][] { 
    // Initialize a result array to store adjacent coordinates
    let res: number[][] = [];

    // Loop through each coordinate in the test tuple
    for (let i = 0; i < 4; i++) {
        // Extract the current x and y coordinates
        let x = test_tup[0];
        let y = test_tup[1];
        
        // Calculate the adjacent coordinates
        let left = [x - 1, y];
        let right = [x + 1, y];
        let up = [x, y - 1];
        let down = [x, y + 1];

        // Add the calculated coordinates to the result array
        res.push(left, right, up, down);
    }
    
    return res;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract all the adjacent coordinates of the given coordinate array.
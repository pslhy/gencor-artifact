function get_coordinates(test_tup: [number, number]): number[][] { 
    // Initialize a result array to store adjacent coordinates
    let res: number[][] = [];

    // Loop through each coordinate in the test tuple
    for (let i = 0; i < 4; i++) {
        // Extract the current x and y coordinates
        let x = test_tup[i][0];
        let y = test_tup[i][1];

        // Define possible moves in the 2D grid (up, down, left, right)
        let moves = [[0, 1], [0, -1], [-1, 0], [1, 0]];

        // Loop through each move
        for (let move of moves) {
            // Calculate the new coordinates
            let nx = x + move[0];
            let ny = y + move[1];

            // Check if the new coordinates are within bounds for a 5x5 grid
            if (nx >= 0 && nx < 5 && ny >= 0 && ny < 5) {
                // Append the new coordinate to the result array
                res.push([nx, ny]);
            }
        }
    }

    // Return the result array containing all adjacent coordinates
    return res;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract all the adjacent coordinates of the given coordinate array.

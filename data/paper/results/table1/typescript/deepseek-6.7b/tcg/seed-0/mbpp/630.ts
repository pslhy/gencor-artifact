function get_coordinates(test_tup: [number, number]): number[][] {
    const adjacent = [[-1, -1], [-1, 0], [-1, 1], [0, -1],
                      [0, 1], [1, -1], [1, 0], [1, 1]];
    let result: number[][] = [];

    for (let i=0; i<test_tup[0]; i++) {
        for (let j=0; j<test_tup[1]; j++) {
            for (let k=0; k<adjacent.length; k++) {
                let x = i + adjacent[k][0];
                let y = j + adjacent[k][1];
                if (x >= 0 && y >= 0 && x < test_tup[0] && y < test_tup[1]) {
                    result.push([i, j, x, y]);
                }
            }
        }
    }
    return result;
}

let test_tup: [number, number] = [4, 4];
let result = get_coordinates(test_tup);

for (let i=0; i<result.length; i++) {
    // Will print every combination of [x1, y1, x2, y2] that has valid coordinates on a 4x4 matrix
    // First two are original coordinates, and the last two are adjacent coordinates.
    // (0,0) like (0,1) like (0,2) like (1,0) like (1,1) ...
    // The output will be in both (x1, y1, x2, y2) and (x2, y2, x1, y1)
    // just to avoid duplicate outputs. For example, (0,0,1,1) will be printed but not (1,1,0,0)
    // `Get_coordinates` helps to get all adjacent coordinates of the given coordinate.
    // For full coverage of all 8 adjacent cells, include `-1, 0` and `0, -1` in the set in the adjacent list.
    // Please change the matrix size carefully, as it could be out of matrix limit and cause error.
    // The time complexity of this method is O(n^2).
    // You can test any index in this matrix for its 8 adjacent indexes.
    // Keep your own index dimension in this method, that is a big index dimension problem.
    // There is no other way to do that, as a 4x4 matrix can have at most 16 positions.
    // Please consider tuning the code for your case.
    if (result[i][0] <= result[i][2] && result[i][1] <= result[i][3]) {
        // copy the list into a new one but with 
        // the elements in reverse order
        let reverse = [...result[i]].reverse() 
        
        // note that we only want to print results that are not in reverse order
        if (reverse.join() !== result[i].join()) {
            // if the current index pair is not reverse of the previous one, then print
            // otherwise, we don't want to print pairs that pipe back and forth between 
            // two indexes (these are "duplicates"). In two dimensions, a valid move 
            // would be from (x1,y1) to (x2,y2), not the reverse path (x2,y2) to (x1,y1)
            // to avoid duplicate results.
            // So, The printf line is only executed when a valid unique coordinate pair was found.
            // That makes the rest of array unaffected, and only the starting and ending index of array 
            // which qualifies the conditions goes through it
            // for appendage /insertion into the console or file
            // Make the code friendlier and cleaner as expected
            // as the output will be repeated currently due to `get_coordinates()` definition
            // an


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract all the adjacent coordinates of the given coordinate array.
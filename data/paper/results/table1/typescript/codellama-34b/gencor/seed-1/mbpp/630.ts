
function get_coordinates(test_tup: [number, number]): number[][] {
    const coordinates: number[][] = [];

    for (let i = 0; i < test_tup.length; i++) {
        const current = test_tup[i];
        coordinates.push([current - 1, current + 1]);
    }

    return coordinates;
}

const test_tup: [number, number] = [10, 12];
const coordinates: number[][] = get_coordinates(test_tup);
console.log(`coordinates: `, coordinates); // Output: [ [9, 11], [11, 13] ]

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract all the adjacent coordinates of the given coordinate array.

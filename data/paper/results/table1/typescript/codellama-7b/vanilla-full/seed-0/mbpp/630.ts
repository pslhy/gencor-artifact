function get_coordinates(test_tup: [number, number]): number[][] {
  const coords: number[][] = [];
  let num = test_tup[0];

  for (let i = 1; i < test_tup.length; i++) {
    const num_diff = Math.abs(num - test_tup[i]);
    if (num_diff === 1) {
      coords.push([num, test_tup[i]]);
    }
    num = test_tup[i];
  }

  return coords;
}

console.log(get_coordinates([1, 3, 7, 9, 11, 13])); // Output: [[1, 3], [3, 7], [7, 9], [9, 11], [11, 13]]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract all the adjacent coordinates of the given coordinate array.

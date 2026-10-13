function get_coordinates(test_tup: [number, number]): number[][] {
  const coords: number[][] = [];
  let num = test_tup[0];

  for (let i = 1; i < test_tup[0] + 1; i++) {
    if (test_tup[1] !== test_tup[0]) {
      coords.push([num, i + 1]);
    }
    num++;
  }

  return coords;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract all the adjacent coordinates of the given coordinate array.
function get_coordinates(test_tup: [number, number]): number[][] {
  const coordinates: number[][] = [];
  for (let i = 1; i < test_tup.length - 1; i++) {
    coordinates.push([test_tup[i - 1], test_tup[i + 1]]);
  }
  return coordinates;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract all the adjacent coordinates of the given coordinate array.

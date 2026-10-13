function get_coordinates(test_tup: [number, number]): number[][] {
  if(test_tup[0] === 0 && test_tup[1] === 0) {
    return [];
  }
  const orientation = test_tup[1] > 0 ? 1 : -1;
  const direction = [orientation, Math.abs(orientation)];
  const coordinates: number[][] = [];
  for(let coord of test_tup[0].toFixed().split('.')) {
    coordinates.push([parseInt(coord, 10), direction[0] * direction[1] * 10]);
  }
  return coordinates;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract all the adjacent coordinates of the given coordinate array.
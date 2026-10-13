function get_coordinates(test_tup: [number, number]): number[][] {
    let output: number[][] = [];
    for (let i = 0; i < test_tup.length; i++) {
      const x = test_tup[i];
      if (i > 0) {
        output.push([x, test_tup[i - 1]]);
      }
      if (i < test_tup.length - 1) {
        output.push([x, test_tup[i + 1]]);
      }
    }
    return output;
  }


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract all the adjacent coordinates of the given coordinate array.

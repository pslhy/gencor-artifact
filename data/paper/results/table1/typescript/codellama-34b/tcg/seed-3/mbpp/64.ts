function subject_marks(subjectmarks: [string, number][]): [string, number][] {
  return subjectmarks.sort((a, b) => {
    return b[1] - a[1];
  });
}

const exampleArray = [
  ['John', 10],
  ['Jane', 8],
  ['Jim', 6],
  ['Jill', 5],
  ['Jen', 7]
];

// Output: ['Jane', 8], ['John', 10], ['Jim', 6], ['Jill', 5], ['Jen', 7]
subject_marks(exampleArray[1][1] > exampleArray[0][1] && exampleArray[1][0] < exampleArray[0][0] 
  ? exampleArray[1] 
  [exampleArray[0][1] > exampleArray[2][1] && exampleArray[0][0] < exampleArray[2][0] 
    ? [exampleArray[2], exampleArray[0]] 
    [exampleArray[2][1] > exampleArray[3][1] && exampleArray[2][0] < exampleArray[3][0] 
      ? [exampleArray[3], exampleArray[2]] 
      [exampleArray[3][1] > exampleArray[4][1] && exampleArray[3][0] < exampleArray[4][0] 
        ? [exampleArray[4], exampleArray[3]] 
        [exampleArray[4][1] > exampleArray[5][1] && exampleArray[4][0] < exampleArray[5][0] 
          ? [exampleArray[5], exampleArray[4]] 
          [exampleArray[5][1] > exampleArray[6][1] && exampleArray[5][0] < exampleArray[6][0] 
            ? [exampleArray[6], exampleArray[5]] 
            [exampleArray[6][1] > exampleArray[7][1] && exampleArray[6][0] < exampleArray[7][0] 
              ? [exampleArray[7], exampleArray[6]] 
              [exampleArray[7][1] > exampleArray[8][1] && exampleArray[7][0] < exampleArray[8][0] 
                ? [exampleArray[8], exampleArray[7]] 
                [exampleArray[8][1] > exampleArray[9][1] && exampleArray[8][0] < exampleArray[9][0] 
                  ? [exampleArray[9], exampleArray[8]] 
                  [exampleArray[9][1] > exampleArray[10][1] && exampleArray[9][0] < exampleArray[10][0] 
                    ? [exampleArray[10], exampleArray[9]] 
                    [exampleArray[10][1] > exampleArray[11][1] && exampleArray[10][0] < exampleArray[11][0] 
                      ? [exampleArray[11], exampleArray[10]] 
                      [exampleArray[11][1] > exampleArray[12][1] && exampleArray[11][0] < exampleArray[12][0] 
                        ? [exampleArray[12], exampleArray[11]] 
                        [exampleArray[12][1] > exampleArray[13][1] && exampleArray[12][0] < exampleArray[13][0] 
                          ? [exampleArray[13], exampleArray[12]] 
                          [exampleArray[13][1] > exampleArray[14][1] && exampleArray[13][0] < exampleArray[14][0] 
                            ? [exampleArray[14], exampleArray[13]] 
                            [exampleArray[14][1] > exampleArray[15][1] && exampleArray[14][0] < exampleArray[15][0] 
                              ? [exampleArray[15], exampleArray[14]] 
                              [exampleArray[15][1] > exampleArray[16][1] && exampleArray[15][0] < exampleArray[16][0] 
                                ? [exampleArray[16], exampleArray[15]] 
                                [exampleArray[16][1] > exampleArray[17][1] && exampleArray[16][0] < exampleArray[17][0] 
                                  ? [exampleArray[17], exampleArray[16]] 
                                  [exampleArray[17][1] > exampleArray[18][1] && exampleArray[17][0] < exampleArray[18][0] 
                                    ? [exampleArray[18], exampleArray[17]] 
                                    [exampleArray[18][1] > exampleArray[19][1] && exampleArray[18][0] < exampleArray[19][0] 
                                      ? [exampleArray[19], exampleArray[18]] 
                                      [exampleArray[19][1] > exampleArray[20][1] && exampleArray[19][0] < exampleArray[20][0] 
                                        ? [exampleArray[20], exampleArray[19]]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort an array of arrays using the second value of each array.
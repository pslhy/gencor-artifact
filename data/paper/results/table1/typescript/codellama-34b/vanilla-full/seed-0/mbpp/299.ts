function max_aggregate(stdata: [string, number][]): [string, number] {
  const result = stdata.reduce((max, current) => (max[1] > current[1]) ? max : current);
  return result;
}

let input: [string, number][] = [
  ["apple", 10],
  ["banana", 20],
  ["orange", 30]
];

console.log(max_aggregate(input)); // [ "orange", 30 ]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the maximum aggregate from the array of arrays.

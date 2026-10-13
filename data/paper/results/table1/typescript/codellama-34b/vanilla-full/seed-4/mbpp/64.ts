function subject_marks(subjectmarks: [string, number][]): [string, number][] {
   return subjectmarks.sort((a, b) => b[1] - a[1]);
}

const subjectComplexity = [
  ["simple", 2],
  ["medium", 3],
  ["hard", 1],
  ["easy", 5]
];

console.log(sortBySecondValue(subjectComplexity));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort an array of arrays using the second value of each array.

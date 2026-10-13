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
console.log(subject_marks(exampleArray));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort an array of arrays using the second value of each array.

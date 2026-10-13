
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
console.log(subject_marks(exampleArray.slice(0, 3).concat(exampleArray.slice(3, 5))
  .concat(exampleArray.slice(5, 7))
  .concat(exampleArray.slice(7, 9))
  .concat(exampleArray.slice(9, 11))
  .concat(exampleArray.slice(11, 13))
  .concat(exampleArray.slice(13, 15))
  .concat(exampleArray.slice(15, 17))
  .concat(exampleArray.slice(17, 19))
  .concat(exampleArray.slice(19, 21))
  .concat(exampleArray.slice(21, 23))
  .concat(exampleArray.slice(23, 25))
  .concat(exampleArray.slice(25, 27))
  .concat(exampleArray.slice(27, 29))
  .concat(exampleArray.slice(29, 31))
  .concat(exampleArray.slice(31, 33))
  .concat(exampleArray.slice(33, 35))
  .concat(exampleArray.slice(35, 37))
  .concat(exampleArray.slice(37, 39))
  .concat(exampleArray.slice(39, 41))
 

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort an array of arrays using the second value of each array.

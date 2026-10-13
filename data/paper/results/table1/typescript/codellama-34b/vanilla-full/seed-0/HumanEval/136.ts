function largest_smallest_integers(lst: number[]): [number | undefined, number | undefined] {
  const sorted = lst.sort((a, b) => a - b);
  const negatives = sorted.filter(x => x < 0);
  const positives = sorted.filter(x => x > 0);
  
  let largestNegative = undefined;
  let smallestPositive = undefined;
  
  if (negatives.length > 0) {
    largestNegative = negatives[negatives.length - 1];
  }
  
  if (positives.length > 0) {
    smallestPositive = positives[0];
  }
  
  return [largestNegative, smallestPositive];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Create a function that returns an array (a, b), where 'a' is
//     the largest of negative integers, and 'b' is the smallest
//     of positive integers in an array.
//     If there is no negative or positive integers, return them as undefined.
//     Examples:
//     >>> largest_smallest_integers([2, 4, 1, 3, 5, 7])
//     [undefined, 1]
//     >>> largest_smallest_integers([])
//     [undefined, undefined]
//     >>> largest_smallest_integers([0])
//     [undefined, undefined]

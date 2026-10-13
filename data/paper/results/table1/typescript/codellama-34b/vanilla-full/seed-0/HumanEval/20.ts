function find_closest_elements(numbers: number[]): [number, number] {
  const sortedNumbers = numbers.sort();
  let closestPair = [sortedNumbers[0], sortedNumbers[1]];
  for (let i = 1; i < sortedNumbers.length - 1; i++) {
    const currentPair = [sortedNumbers[i], sortedNumbers[i + 1]];
    if (currentPair[1] - currentPair[0] < closestPair[1] - closestPair[0]) {
      closestPair = currentPair;
    }
  }
  return closestPair;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     From a supplied array of numbers (of length at least two) select and return two that are the closest to each
//     other and return them in order (smaller number, larger number).
//     >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.2])
//     [2.0, 2.2]
//     >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.0])
//     [2.0, 2.0]

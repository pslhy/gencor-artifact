function find_closest_elements(numbers: number[]): [number, number] {
  let closestElements = [numbers[0], numbers[1]];
  let closestDiff = numbers[1] - numbers[0];

  for (let i = 0; i < numbers.length - 1; i++) {
    for (let j = i + 1; j < numbers.length; j++) {
      const diff = numbers[j] - numbers[i];
      if (diff < closestDiff) {
        closestDiff = diff;
        closestElements = [numbers[i], numbers[j]];
      }
    }
  }

  return closestElements.sort((a, b) => a - b) as [number, number];
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
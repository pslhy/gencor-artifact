function by_length(arr: number[]): string[] {
  const sortedArr = arr.sort((a, b) => a - b);
  const revArr = sortedArr.reverse();
  const digitNames = ['One', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine'];
  return revArr.map(digit => {
    if(digit >= 1 && digit <= 9) {
      return digitNames[digit - 1];
    } else {
      return '';
    }
  }).filter(name => name !== '');
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given an array of integers, sort the integers that are between 1 and 9 inclusive,
//     reverse the resulting array, and then replace each digit by its corresponding name from
//     "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine".
//     For example:
//     >>> by_length([2, 1, 1, 4, 5, 8, 2, 3])
//     ["Eight", "Five", "Four", "Three", "Two", "Two", "One", "One"]
//     If the array is empty, return an empty array:
//     >>> by_length([])
//     []
//     If the array has any strange number ignore it:
//     >>> by_length([1, -1, 55])
//     ["One"]

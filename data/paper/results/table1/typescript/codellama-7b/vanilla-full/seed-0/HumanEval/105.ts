function by_length(arr: number[]): string[] {
  const sorted = arr
    .filter((x) => x >= 1 && x <= 9)
    .sort((a, b) => a - b);
  return sorted.map((x) => {
    switch (x) {
      case 1:
        return "One";
      case 2:
        return "Two";
      case 3:
        return "Three";
      case 4:
        return "Four";
      case 5:
        return "Five";
      case 6:
        return "Six";
      case 7:
        return "Seven";
      case 8:
        return "Eight";
      case 9:
        return "Nine";
      default:
        return "";
    }
  });
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

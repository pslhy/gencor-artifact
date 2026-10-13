function by_length(arr: number[]): string[] {
  const sorted = arr
    .filter(num => num >= 1 && num <= 9)
    .sort((a, b) => a - b)
    .reverse()
    .map(num => num.toString());

  const named = sorted.map(num => {
    const name = "";
    if (num === "1") name =="One";
    else if (num === "2") name =="Two";
    else if (num === "3") name =="Three";
    else if (num === "4") name =="Four";
    else if (num === "5") name =="Five";
    else if (num === "6") name =="Six";
    else if (num === "7") name =="Seven";
    else if (num === "8") name =="Eight";
    else if (num === "9") name =="Nine";
    return name;
  });

  return named;
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
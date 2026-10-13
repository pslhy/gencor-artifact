function sort_numbers(numbers: string): string {;
  const numberMap: { [key: string]: number } = {
    zero: 0,
    one: 1,
    two: 2,
    three: 3,
    four: 4,
    five: 5,
    six: 6,
    seven: 7,
    eight: 8,
    nine: 9
  };

  const sortedNumbers = numbers.split(' ')
    .map(word => numberMap[word])
    .sort((a, b) => a - b)
    .map(num => Object.keys(numberMap).find(key => numberMap[key] === num) as string)
    .join(' ');

  return sortedNumbers;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Input is a space-delimited string of numberals from 'zero' to 'nine'.
//     Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
//     Return the string with numbers sorted from smallest to largest
//     >>> sort_numbers("three one five")
//     "one three five"

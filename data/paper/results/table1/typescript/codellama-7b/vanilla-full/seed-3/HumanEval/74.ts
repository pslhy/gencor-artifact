function total_match(lst1: string[], lst2: string[]): string[] {
  if(lst1.length === 0 && lst2.length === 0) {
    return [];
  }

  let smallerArray: string[] = [];
  let largerArray: string[] = [];

  if(lst1.length < lst2.length) {
    smallerArray = lst1;
    largerArray = lst2;
  } else {
    smallerArray = lst2;
    largerArray = lst1;
  }

  let smallerArrayTotalChars: number = 0;
  for(let smallerArrayElem of smallerArray) {
    smallerArrayTotalChars += smallerArrayElem.length;
  }

  let largerArrayTotalChars: number = 0;
  for(let largerArrayElem of largerArray) {
    largerArrayTotalChars += largerArrayElem.length;
  }

  if(smallerArrayTotalChars < largerArrayTotalChars) {
    return smallerArray;
  } else {
    return largerArray;
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that accepts two arrays of strings and returns the array that has
//     total number of chars in the all strings of the array less than the other array.
//     if the two arrays have the same number of chars, return the first array.
//     Examples
//     >>> total_match([], [])
//     []
//     >>> total_match(["hi", "admin"], ["hI", "Hi"])
//     ["hI", "Hi"]
//     >>> total_match(["hi", "admin"], ["hi", "hi", "admin", "project"])
//     ["hi", "admin"]
//     >>> total_match(["hi", "admin"], ["hI", "hi", "hi"])
//     ["hI", "hi", "hi"]
//     >>> total_match(["4"], ["1", "2", "3", "4", "5"])
//     ["4"]

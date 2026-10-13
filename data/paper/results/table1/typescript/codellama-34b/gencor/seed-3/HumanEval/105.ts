
function by_length(arr: number[]): string[] {
  if(arr.length === 0){
    return [];
  }
  let sorted = arr.filter(x => x >= 1 && x <= 9).sort();
  let reversed: string[] = [];
  for(let num: number = sorted.length - 1; num >= 0; num--){
    reversed.push(num.toString());
  }
  let replaced: string[] = [];
  for(let i: number = 0; i < reversed.length; i++){
    if(reversed[i] === "1"){
      replaced.push("One");
    }
    else if(reversed[i] === "2"){
      replaced.push("Two");
    }
    else if(reversed[i] === "3"){
      replaced.push("Three");
    }
    else if(reversed[i] === "4"){
      replaced.push("Four");
    }
    else if(reversed[i] === "5"){
      replaced.push("Five");
    }
    else if(reversed[i] === "6"){
      replaced.push("Six");
    }
    else if(reversed[i] === "7"){
      replaced.push("Seven");
    }
    else if(reversed[i] === "8"){
      replaced.push("Eight");
    }
    else if(reversed[i] === "9"){
      replaced.push("Nine");
    }
  }
  return replaced;
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

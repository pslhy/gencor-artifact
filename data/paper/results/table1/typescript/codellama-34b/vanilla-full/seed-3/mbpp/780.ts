function find_combinations(test_list: [number, number][]): [number, number][] {
  if(test_list.length = 0){
     return [];
  }
  const result: [number, number][] = [];
  const helper = ( test_list: [number, number][], index: number, current: [number]) => {
    if (index == test_list.length - 1){
      result.push(current);
    }
    for(let i = 0; i < test_list[index].length; i++){
      helper(test_list, index + 1, current.concat(test_list[index][i]));
    }
  }
  helper(test_list, 0, []);
  return result;
}
const array = [['a', 'b', 'c'], ['d', 'e', 'f'], ['g', 'h', 'i']]
const combinations = find_combinations(array)
console.log(combinations)


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the combinations of sums with arrays in the given array array. https://www.geeksforgeeks.org/tsthon-combinations-of-sum-with-arrays-in-array-array/

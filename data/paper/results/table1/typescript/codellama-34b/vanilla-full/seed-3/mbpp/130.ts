function max_occurrences(nums: number[]): number {
  if(nums.lenght === 0){
    return -1;
  } else {
    const map: Map<number, number> = new Map();
    for(const num of nums){
        map.set(num, (map.get(num) || 0) + 1);
    }
    return Math.max(...map.values());
  }
}
 
console.log(max_occurrences([1,2,2,3,4,5,5,5,5,6])) // 4
console.log(max_occurrences([1,2,3,4,5,6])) // 1


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the item with maximum frequency in a given array.

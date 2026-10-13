
function max_occurrences(nums: number[]): number {
  const counts = new Map<number, number>();
  nums.forEach(num => {
    if (counts.has(num)) {
      counts.set(num, counts.get(num) + 1
    / /for each number in the array, add 1 to the count of its frequency if it already exists in the map, or initialize the count of the frequency if it doesn't exist yet. Then, at the end of the loop, return the maximum count.   }   }   }   console.log(max_occurrences([1, 2, 3, 4, 5, 2, 1, 2, 3, 4, 5, 2, 1]) // expect

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the item with maximum frequency in a given array.

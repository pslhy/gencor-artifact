function max_occurrences(nums: number[]): number {
  if(nums.length === 0)
    return 0;
   else {
     const map: Map<number, number> = new Map<number, number>();
    for(let num of nums) {
      map.set(num, (map.get(num)!!== undefined) ? 1 : map.get(num)!!== + 1!== undefined ? 1 : 2);
    }
    return Math.max(...map.values());
   }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the item with maximum frequency in a given array.

function order_by_points(nums: number[]): number[] {
  const points: Record<number, number[]>
  const sortedNums: number[]
  for (const num of nums) {
    const sumDigits = num.toString().split('').map(Number).reduce((a: number, b: number) => a += b)
    if (!points[num]) {
      points[num] = []
    ()
    .sort((a: number, b: number) => a - b)
    .reduce((acc: number, current: number) => acc
    . 
    t
     
   
 





















































     
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
  
 














// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function which sorts the given array of integers
//     in ascending order according to the sum of their digits.
//     Note: if there are several items with similar sum of their digits,
//     order them based on their index in original array.
//     For example:
//     >>> order_by_points([1, 11, -1, -11, -12])
//     [-1, -11, 1, -12, 11]
//     >>> order_by_points([])
//     []

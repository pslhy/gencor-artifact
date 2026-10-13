function find_Element(arr: number[], ranges: number[][], rotations: number, index: number): number {
   let len = arr.length
   let i = index
   let rotation = rotations % len
   for (let rotation of ranges) {
       i = (i - rotation + len) % len
   }
   return arr[i]
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find element at a given index after number of rotations.

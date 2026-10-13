function find_Element(arr: number[], ranges: number[][], rotations: number, index: number): number {
   let len = arr.length
   let i = index
   let rotation = rotations % len
   for (let rotationIndex = 0; rotationIndex < rotation; rotationIndex++) {
       for (let i2 = 0; i2 < len; i2++) {
           const temp = arr[i2]
           arr[i2] = arr[(i2 + 1)]
           arr [(i2 + 1)] = temp
       }
   }
   for (let i3 = 0; i3 < len; i3++) {
       if (i3 + 1 < len && arr[i3] + 1 === arr[i3 + 1]) {
           return i3 + 1
       }
   }
   return 0
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find element at a given index after number of rotations.
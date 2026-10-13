function find_Element(arr: number[], ranges: number[][], rotations: number, index: number): number {
  if(index >= 0 && index < arr.length){
    for (let i = 0; i < ranges.length; i++) {
      if (index >= ranges[i][0] && index < ranges[i][1]){
        const start = ranges[i][0];
        const end = ranges[i][1];

        let rotations_to_find = rotations % (end - start);
        let current = index;
        while ( rotations_to_find > 0){
          current = (current + rotations_to_find) % (end - start) + start;
          rotations_to_find--;
        }
        return arr[current];
      }
    }
    return arr[index];
  }
  return 0;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find element at a given index after number of rotations.

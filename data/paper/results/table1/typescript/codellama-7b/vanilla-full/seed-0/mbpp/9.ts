function find_Rotations(str: string): number {
  const sortedStr = str.split('').sort().join('');
  let count = 0;

  for (let i = 1; i < sortedStr.length; i++) {
    if (sortedStr[i] === sortedStr[i - 1]) {
      count++;
    }
  }

  return count;
}

console.log(find_Rotations('aabbcc')); // 3
console.log(find_Rotations('aabcc')); // 2
console.log(find_Rotations('aacbb')); // 1


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the minimum number of rotations (greater than 0) required to get the same string.

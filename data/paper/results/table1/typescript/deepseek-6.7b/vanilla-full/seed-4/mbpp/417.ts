function group_tuples(Input: string[][]): string[][] {
  const map: { [str: string]: number } = {};
  let grouped: string[][] = [];

  for (let i = 0; i < Input.length; i++) {
    if (!Input[i][0]) {
      throw new Error('First element of each array is required to be not null or undefined');
    }
    const key = Input[i][0];
    if (map[key]) {
      grouped[map[key]].push(...Input[i].slice(1));
    } else {
      map[key] = grouped.length;
      grouped.push([...Input[i].slice(1)]);
    }
  }
  
  return grouped;
}

console.log(group_tuples([["a","x","y","z"], ["a","p","q","r"], ["b","s","t"], ["a","u","v"], ["b","w","x"]]))
// expected output [["x","y","z", "p", "q", "r"], ["s", "t"], ["u", "v"], ["w", "x"]]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find common first element in given array of arrays.

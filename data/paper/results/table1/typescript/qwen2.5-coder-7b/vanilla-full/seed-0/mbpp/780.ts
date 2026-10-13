function find_combinations(test_list: [number, number][]): [number, number][] { 
  let size = test_list.length; 
  let res: [number, number][] = []; 
  let num = 0; 
  
  const dp: boolean[][] = Array.from({ length: size + 1 }, () => Array(num + 1).fill(false)); 
  dp[0][0] = true; 
  
  for (let i = 1; i <= size; i++) { 
    for (let s = 0; s <= num; s++) { 
      if (dp[i - 1][s]) { 
        const [key, value] = test_list[i - 1]; 
        if (s + key <= num) { 
          dp[i][s + key] = true; 
          res.push([s + key, value + s]); 
        } 
      } 
    } 
  } 
  
  return res; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the combinations of sums with arrays in the given array array. https://www.geeksforgeeks.org/tsthon-combinations-of-sum-with-arrays-in-array-array/

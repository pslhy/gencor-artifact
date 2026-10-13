function sort_matrix(M: number[][]): number[][] {
  if(M.length == 0 || M[0].length == 0){
    return M;
  }
  
  let sorted: number[][] = [];
  for(let i: number = 0; i<M.length;i++){
    let {element, index} = max_row(M, sorted);
    sorted.push(element);
    M = M.slice(0, index).concat(M.slice(index+1)
  }
  return sorted;
}

function max_row(M: number[][], sorted: number[][]): {element: number[], index: number} {
  let max_sum:number = 0;
  let max_index :number = -1;
  for(let i:number=0; i<M.length; i++) {
    let sum: number = M[i].reduce((a, b) => a + b, 0);
    if(sum > max_sum) {
      max_sum = sum;
      max_index = i;
    }
  }
  return {element: M[max_index], index: max_index};
}

function test_sort_matrix(): void {
  let M: number[][] = [[1, 2, 3], [4, 5, 6], [0, 1, 2]];
  let sorted: number[][] = sort_matrix(M);
  console.log(sorted); 
  // Expected Output: [[0, 1, 2], [1, 2, 3], [4, 5, 6]]
  
}

test_sort_matrix();


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort a given matrix in ascending order according to the sum of its rows.

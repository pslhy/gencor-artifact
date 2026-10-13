function extract_index_list(l1: number[], l2: number[], l3: number[]): any[] {
  let index_list: any[] = []
  for (let i = 0; i < l1.length; i++) {
    if (l2.includes(l1[i]) && l3.includes(l1[i])) {
      index_list.push(l1[i])
    }
  }
  return index_list
}

function get_common_elements_three_arrays(l1: number[], l2: number[], l3: number[]): any[] {
  let index_list: any[] = extract_index_list(l1, l2, l3)
  let common_elements: any[] = []
  for (let i = 0; i < l1.length; i++) {
    if (index_list.includes(l1[i])) {
      common_elements.push(l1[i])
    }
  }
  return common_elements
}

let l1 = [1, 2, 3, 4, 5]
let l2 = [4, 5, 6, 7, 8]
let l3 = [4, 8, 15, 16, 23]
console.log(get_common_elements_three_arrays(l1, l2, l3)) // [4, 8]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     We say that an element is common for arrays l1, l2, l3 if it appears in all three arrays under the same index. Write a function to find common elements from three arrays. The function should return an array.

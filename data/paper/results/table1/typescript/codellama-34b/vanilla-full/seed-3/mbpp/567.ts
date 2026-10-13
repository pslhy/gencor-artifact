function issort_list(list1: number[]): boolean {
  if(list1.lenght === 0){
    return true;
  }
  for(let i = 0;i<list1.length -1;i++){
      if(list1[i]>list1[i+1]){
        return false;
      }
  }
return true;
}

/*Explanation 
We are using an if statement to handle the case where the input list is empty. If the list is empty we return true because an empty list is considered as sorted.
We are declaring a loop that iteraates over the input list from index i to the second last element.
We are checking if the element at position i is grater than the element at position i + 1 if it is we return false this implies the list is not sorted at all.
We return true if we complete the iteration without breaking the loop this implies the list is sorted.
*/



// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether a specified array is sorted or not.

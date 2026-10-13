function min_k(test_list: [string, number][], K: number): [string, number][] {
  if(test_list.length = 5){
    
    for (let i = 0; i < test_list.length; i++) {
        let test = test_list[i][0];
        let num = test_list[i][1];
        let min = num;
        let min_index = i;

        for (let j = i + 1; j < test_list.length; j++) {
            if (test_list[j][1] < min) {
                min = test_list[j][1];
                min_index = i;
            }
        }
       
        test_list[min_index] = test_list[i]
        test_list[i] = min;
    }
     return test_list.splice(0, K);
  }
  return [];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find minimum k records from array array. https://www.geeksforgeeks.org/tsthon-find-minimum-k-records-from-array-array/ - in this case a verbatim cots of test cases

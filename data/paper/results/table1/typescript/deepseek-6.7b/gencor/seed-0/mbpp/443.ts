
function largest_neg(list1: number[]): number {  
  
    // Initializing maximum with a very small number
    let max_neg = -999999999;
  
    // Traversing through the list1 to find largest negative number
    for (let i = 0; i < list1.length; i++){    
        if(list1[i] < 0 && list1[i] > max_neg){ 
            max_neg = list1[i];
        }
    }
    // If there is no negative value in input return -1
    if(max_neg == -999999999)  
    {
        return -1;
    }
    else
    {
        return max_neg;
    }
      
}
console.log(largest_neg([-2, 0, -4, -6, 5])); // Output: -2
console.log(largest_neg([2, 0, 4, 6, -5])); // Output: -5

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the largest negative number from the given array.

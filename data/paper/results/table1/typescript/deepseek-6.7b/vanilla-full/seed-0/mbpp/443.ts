function largest_neg(list1: number[]): number {  
  
    // Initializing maximum with a very small number
    var max = -10000000;  
  
    for i in list1:
        if list1[i] < 0 and list1[i] > max:
            max = list1[i]
    return max  
}  


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the largest negative number from the given array.

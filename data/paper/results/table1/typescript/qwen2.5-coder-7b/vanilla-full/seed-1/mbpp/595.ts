function min_Swaps(str1: string, str2: string): any { 
    let count_1 = 0; 
    let count_0 = 0; 
  
    for (let i = 0; i < str1.length; i++) { 
        if (str1[i] === '1') 
            count_1++; 
        else
            count_0++; 
    } 
  
    let count_1_2 = 0; 
    let count_0_2 = 0; 
  
    for (let i = 0; i < str2.length; i++) { 
        if (str2[i] === '1') 
            count_1_2++; 
        else
            count_0_2++; 
    } 
  
    if ((count_1 === count_1_2 && count_0 === count_0_2)) 
        return Math.floor((count_1 + count_0) / 2); 
  
    return "NOT POSSIBLE"; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count minimum number of swaps required to convert one binary number represented as a string to another.

function min_Swaps(str1: string, str2: string): any { 
    let count0 = 0, count1 = 0; 
  
    for (let i = 0; i < str1.length; i++) {
        if (str1[i] === '0') 
            count0++; 
        else
            count1++; 
        if (str2[i] === '0') 
            count0--; 
        else
            count1--; 
    } 
  
    if ((count1 + count0) % 2 !== 0) 
        return "Impossible"; 
  
    return (Math.abs(count1) + Math.abs(count0)) / 2; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count minimum number of swaps required to convert one binary number represented as a string to another.

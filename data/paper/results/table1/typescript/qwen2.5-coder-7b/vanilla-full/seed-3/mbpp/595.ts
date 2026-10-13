function min_Swaps(str1: string, str2: string): any { 
    let ones1 = 0, ones2 = 0; 
    let swaps = 0; 
      
    if (str1.length !== str2.length) 
        return "the length are different"; 
  
    for (let i = 0; i < str1.length; i++) { 
        if (str1[i] === '1') 
            ones1++; 
        if (str2[i] === '1') 
            ones2++;   
        if (ones1 !== ones2 && i === str1.length - 1) 
            return "not possible"; 
    } 
  
    for (let i = 0; i < str1.length; i++) { 
        let count = 0; 
        for (let j = i; j >= 0; j--) { 
            if (str1[j] === '1') 
                count++; 
            if (str1[j] === '0' && count % 2 !== 0) { 
                swaps++; 
                break; 
            } 
        } 
    } 
    return swaps; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count minimum number of swaps required to convert one binary number represented as a string to another.

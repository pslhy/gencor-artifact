function mul_even_odd(list1: number[]): number { 
    let even: number | undefined = undefined; 
    let odd: number | undefined = undefined; 
  
    for(let i = 0; i < list1.length; i++) { 
        if (even !== undefined && odd !== undefined) { 
            break; 
        } 
  
        if ((list1[i] & 1) === 0 && even === undefined) { 
            even = list1[i]; 
        } 
  
        if ((list1[i] & 1) !== 0 && odd === undefined) { 
            odd = list1[i]; 
        } 
    } 
  
    if (even === undefined || odd === undefined) { 
        throw new Error("Array must contain at least one even and one odd number"); 
    } 
  
    return even * odd; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the product of first even and odd number of a given array.

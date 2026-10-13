
function prime_num(num: number): boolean { 
    if (num <= 1) return false; 
    if (num <= 3) return true; 
  
    if (num % 2 === 0 || num % 3 === 0) return false; 
  
    for (let i = 5; i * i <= num; i += 6) { 
        if (num % i === 0 || num % (i + 2) === 0) return false; 
    } 
  
    return true; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if the given integer is a prime number.

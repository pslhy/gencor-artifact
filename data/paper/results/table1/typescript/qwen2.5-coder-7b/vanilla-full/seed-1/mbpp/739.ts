function find_Index(n: number): number { 
    let power: number = Math.ceil((Math.log10(Math.pow(10, n - 1))) / Math.log10(3)); 
    if (power % 2 === 0) { 
        return Math.pow(2, power - 1); 
    } else { 
        return Math.pow(2, power); 
    } 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the index of smallest triangular number with n digits. https://www.geeksforgeeks.org/index-of-smallest-triangular-number-with-n-digits/

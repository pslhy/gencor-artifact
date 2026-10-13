function find_Rotations(str: string): number { 
    let n: number = str.length; 
    let rotations: number = 1; 
  
    for (let i: number = 1; i < n; i++) { 
        if (str[i] == str[0]) { 
            rotations++; 
        } 
    } 
  
    return rotations; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the minimum number of rotations (greater than 0) required to get the same string.

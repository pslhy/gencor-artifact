function find_Rotations(str: string): number { 
    let size = str.length; 
  
    if (size <= 0) {
        return 0; 
    }

    for (let i = 1; i <= size - 1; i++) {
        let modifiedString = str.substring(i)+str.substring(0, i);
        if (modifiedString === str) { 
            return i; 
        } 
    } 
  
    return size; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the minimum number of rotations (greater than 0) required to get the same string.

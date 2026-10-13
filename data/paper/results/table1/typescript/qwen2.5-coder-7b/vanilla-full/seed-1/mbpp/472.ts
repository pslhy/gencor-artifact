function check_Consecutive(l: number[]): boolean { 
    l.sort(function (a: number, b: number) { 
        return a - b; 
    });  
    for (let i: number = 0; i < l.length - 1; i++) { 
        if (l[i] + 1 != l[i + 1]) { 
            return false; 
        } 
    } 
    return true; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether the given array contains consecutive numbers or not.

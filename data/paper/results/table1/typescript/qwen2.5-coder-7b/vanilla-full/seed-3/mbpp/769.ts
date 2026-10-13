function Diff(li1: number[], li2: number[]): number[] {  
    let traversal: number[] = input.slice();  
    for (let i = 0; i < traversal.length; i++) {  
        for (let j = 0; j < li2.length; j++) {  
            if (traversal[i] === li2[j]) {  
                traversal.splice(i, 1);  
                i--;  
                break;  
            }  
        }  
    }  
    return traversal;  
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to get the difference between two arrays.

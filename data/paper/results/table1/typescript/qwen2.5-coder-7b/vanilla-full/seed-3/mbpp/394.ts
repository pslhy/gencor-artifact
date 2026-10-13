function check_distinct(test_tup: number[]): boolean { 
    let res: boolean = true; 
    let len_tup: number = test_tup.length; 
    let temp: Set<number> = new Set(); 
  
    for (let i = 0; i < len_tup; i++) { 
        if (temp.has(test_tup[i])) { 
            res = false; 
            break; 
        } else { 
            temp.add(test_tup[i]); 
        } 
    } 
    return (res); 
} 


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if given array contains no duplicates.

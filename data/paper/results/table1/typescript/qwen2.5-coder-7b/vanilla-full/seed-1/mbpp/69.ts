function is_sublist(l: number[], s: number[]): boolean { 
    let sub: boolean = false; 
    if (s.length === 0) sub = true; 
    else if (l.length === 0) sub = false; 
    else if (s.length > l.length) sub = false; 
    else { 
        for(let i = 0; i < l.length; i++) { 
            if (l[i] === s[0]) { 
                let n = 1; 
                while (n < s.length && l[i+n] === s[n]) { 
                    n++; 
                }; 
                if (n === s.length) sub = true; 
            } 
        } 
    } 
    return sub; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether an array contains the given subarray or not.

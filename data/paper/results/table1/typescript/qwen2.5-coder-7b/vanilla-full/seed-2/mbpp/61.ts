function count_Substrings(s: string): number { 
    let count = 0; 
    let sum = 0; 
    let freq = new Map(); 
    freq.set(0, 1); 

    for (let i = 0; i < s.length; i++) { 
        sum += parseInt(s[i]); 
        count += (freq.get(sum - (i + 1)) || 0); 
        freq.set(sum - (i + 1), (freq.get(sum - (i + 1)) || 0) + 1); 
    } 
    return count; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the number of substrings with the sum of digits equal to their length.

function count_Substrings(s: string): number { 
    let map = new Map(); 
    map.set(0, 1); 
    let count = 0; 
    let sum = 0; 
    for (let i = 0; i < s.length; i++) { 
        sum += parseInt(s[i]); 
        if (map.has(sum - (i + 1))) { 
            count += map.get(sum - (i + 1))!; 
        } 
        if (map.has(sum - i)) { 
            map.set(sum - i, map.get(sum - i)! + 1); 
        } else { 
            map.set(sum - i, 1); 
        } 
    } 
    return count; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the number of substrings with the sum of digits equal to their length.

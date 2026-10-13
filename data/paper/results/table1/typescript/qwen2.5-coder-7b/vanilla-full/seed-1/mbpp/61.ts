function count_Substrings(s: string): number { 
    let count: number = 0; 
    let sum: number = 0; 
    let map: Map<number, number> = new Map(); 
    map.set(0, 1); 

    for (let i = 0; i < s.length; i++) { 
        sum += parseInt(s[i]); 

        if (map.has(sum - (i + 1))) { 
            count += map.get(sum - (i + 1))!; 
        } 

        map.set(sum - (i + 1), (map.get(sum - (i + 1)) || 0) + 1); 
    } 

    return count; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the number of substrings with the sum of digits equal to their length.

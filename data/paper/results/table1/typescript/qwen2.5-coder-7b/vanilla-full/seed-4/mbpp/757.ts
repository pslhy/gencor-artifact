function count_reverse_pairs(test_list: string[]): number { 
    let res = 0; 
    for (let i of range(test_list.length)) { 
        for (let j of range(i + 1, test_list.length)) { 
            if (test_list[i] === test_list[j].split('').reverse().join('')) { 
                res += 1; 
            } 
        } 
    } 
    return res; 
} 

function range(end: number): number[] { 
    return Array.from({ length: end }, (_, i) => i); 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count the pairs of reverse strings in the given string array. https://www.geeksforgeeks.org/tsthon-program-to-count-the-pairs-of-reverse-strings/

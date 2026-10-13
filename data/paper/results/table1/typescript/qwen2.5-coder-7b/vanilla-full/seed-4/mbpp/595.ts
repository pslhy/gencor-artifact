function min_Swaps(str1: string, str2: string): any { 
    let count = 0; 
    for (let i of str1) { 
        if (i !== str2[count++]) { 
            return -1; 
        } 
    } 

    let result = 0; 
    for (let i = 0; i < str1.length - 1; i++) { 
        if (str1[i] === '1' && str1[i + 1] === '0') { 
            str1 = swap(str1, i); 
            i++; 
            result++; 
        } 
    } 
    return result; 
} 

function swap(str: string, i: number): string { 
    let left = str[i]; 
    let right = str[i + 1]; 
    str = str.slice(0, i) + right + str.slice(i + 1); 
    str = str.slice(0, i + 1) + left + str.slice(i + 2); 
    return str; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count minimum number of swaps required to convert one binary number represented as a string to another.

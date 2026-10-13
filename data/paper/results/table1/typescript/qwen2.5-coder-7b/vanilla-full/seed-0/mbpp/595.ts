function min_Swaps(str1: string, str2: string): any { 
    let size1 = str1.length; 
    let size2 = str2.length; 

    if (size1 !== size2) { 
        return "Not Possible"; 
    } 

    let countZeroes1 = 0; 
    let countOnes2 = 0; 

    let ans = 0; 

    for (let i = 0; i < size1; i++) { 
        if (str1[i] === '0') { 
            countZeroes1++; 
        } 
        if (str2[i] === '1') {
            countOnes2++; 
        } 
    } 

    if (countZeroes1 !== countOnes2) { 
        return -1; 
    } 

    for (let i = 0; i < countZeroes1; i++) { 
        for (let j = i + countZeroes1; j < size1; j++) {
            if (str1[j] === '1') { 
                let temp = str1[i]; 
                str1[i] = str1[j]; 
                str1[j] = temp; 
                ans++; 
                break; 
            } 
        } 
    } 

    return ans; 
} 


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count minimum number of swaps required to convert one binary number represented as a string to another.

function upper_ctr(str: string): number {  
    let upperCount = 0;  
    for (let i = 0; i < str.length; i++) {  
        if (str[i] === str[i].toUpperCase() && isNaN(str[i] as any)) {  
            upperCount++;  
        }  
    }  
    return upperCount;  
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the upper case characters in a given string.

function freq_count(list1: number[]): {[key: number]: number} { 
    let result: {[key: number]: number} = {};
    for(let i = 0; i < list1.length; i++) { 
        if(result[list1[i]]) { 
            result[list1[i]] += 1; 
        } else { 
            result[list1[i]] = 1; 
        } 
    } 
    return result; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to get the frequency of all the elements in an array, returned as an object.

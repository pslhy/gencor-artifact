function count_reverse_pairs(test_list: string[]): number { 
    let size = test_list.length; 
    let res: number = 0; 
    let temp = test_list.slice(); 
  
    // sort arr across characters. 
    for (let i = 0; i < size; i++) { 
        let strArr = temp[i].split(''); 
        strArr.sort(); 
        temp[i] = strArr.join(''); 
    } 
  
    // sort entire array and count pairs 
    temp.sort(); 
  
    for (let i = 1; i < size; i++) { 
        const prev = temp[i - 1]; 
        const curr = temp[i]; 
        if (prev === curr) { 
            res++; 
            i++; 
        } 
    } 
  
    return res; 
}



// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count the pairs of reverse strings in the given string array. https://www.geeksforgeeks.org/tsthon-program-to-count-the-pairs-of-reverse-strings/

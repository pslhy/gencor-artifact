function Find_Max(lst: any[][]): any[] { 
    let max_length = 0; 
    let max_element: any[] = []; 

    for (let i = 0; i < lst.length; i++) { 
        if (lst[i].length > max_length) { 
            max_length = lst[i].length; 
            max_element = lst[i]; 
        } 
    } 

    return max_element; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the element of an array having maximum length.

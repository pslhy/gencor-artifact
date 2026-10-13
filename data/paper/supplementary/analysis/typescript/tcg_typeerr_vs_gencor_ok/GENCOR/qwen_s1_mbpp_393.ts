
function max_length_list(input_list: number[][]): [number, number[]] { 
    let max_length = 0; 
    let max_list = null; 
  
    input_list.forEach((list) => { 
        if (list.length > max_length) { 
            max_length = list.length; 
            max_list = list; 
        } 
    }); 
  
    if (max_list !== null) {
        return [max_length, max_list];
    } else {
        return [0, []];
    }
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the array with maximum length.

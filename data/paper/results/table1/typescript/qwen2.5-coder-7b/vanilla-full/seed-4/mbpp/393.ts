function max_length_list(input_list: number[][]): [number, number[]] { 
    let result = input_list.reduce(function(prev, current) {
        return prev.length > current.length ? prev : current;
    }, []);
    
    return [result.length, result];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the array with maximum length.

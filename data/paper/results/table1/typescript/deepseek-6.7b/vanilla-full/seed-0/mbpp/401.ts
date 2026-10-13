function add_nested_tuples(test_tup1: number[][], test_tup2: number[][]): number[][] {
    if(test_tup1.length !== test_tup2.length)
        throw new Error('Both arrays should have same length');
        
    let result: number[][] = [];

    for(let i=0; i<test_tup1.length; i++) {
        if(test_tup1[i].length !== test_tup2[i].length)
            throw new Error('Arrays inside each must have same length');
            
        result.push([]);
        
        for(let j=0; j<test_tup1[i].length; j++)
            result[i].push(test_tup1[i][j] + test_tup2[i][j]);        
    }
    
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to perform index wise addition of array elements in the given two nested arrays.

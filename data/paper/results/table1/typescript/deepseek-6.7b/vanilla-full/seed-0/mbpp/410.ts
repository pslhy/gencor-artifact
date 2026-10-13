function min_val(listval: (string | number)[]): number {
    let curr_min: number = typeof listval[0] === 'number' ? listval[0] : 99999999;
        
    for (let i=0; i< listval.length; i++) {
        if (typeof listval[i] === 'number' && listval[i] < curr_min) {
            curr_min = listval[i];
        }
    }
    return curr_min;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the minimum value in a given heterogeneous array.

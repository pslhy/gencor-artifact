function max_aggregate(stdata: [string, number][]): [string, number] {    
    let max Aggregate [string, number] = ['', Number.MIN_SAFE_INTEGER];
    for(const elem of stdata){
        let currAggregate = elem[1];
        for(let index = 0; index < elem[0].length; index++){
            currAggregate += elem[0].charCodeAt(index) - 96 - (index + 1);
        }
        if(currAggregate > maxAggregate[1]){
            maxAggregate = elem;
        }
    }
    return maxAggregate;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the maximum aggregate from the array of arrays.

function min_val(listval: (string | number)[]): number {
    let mval = Math.min.apply(null, listval.map(val => typeof val == 'number' ? val : parseInt(val)));
    
    return mval;
}

let listval = [45, 23, '34', '90', 'Infinity'];
console.log(min_val(listval)); // will display the smallest number


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the minimum value in a given heterogeneous array.

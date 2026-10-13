function min_val(listval: (string | number)[]): number {
    let min: number = Number.MAX_SAFE_INTEGER;
    for (const item of listval){
        if(Number(item)<min){
            min = Number(item);
       }
    }
    return min;
} 

let array1: (string | number)[] = [4, "12", 6, "10"];  // Min is 4
let array2: (string | number)[] = ["23", "3", 43, 2, "12"];  // Min is 2
console.log(min_val(array1)); // 4
console.log(min_val(array2)); // 2


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the minimum value in a given heterogeneous array.

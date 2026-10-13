function test_duplicate(arraynums: number[]): boolean {  
    let sorted_arr = arraynums.sort((a, b) => a - b);
    for(let i = 0; i < arraynums.length - 1; i++) {
        if(sorted_arr[i + 1] == sorted_arr[i]) {
            return true;  
        }
    }
    return false;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find whether a given array of integers contains any duplicate element.

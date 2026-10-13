
function jacobsthal_num(n: number): number {
    if(n == 0){
        return 0;
    }
    if(n == 1){
        return 1;
    }
    let res = 0;
    for(let i = 0; i < n; i++){
        res += Math.pow(2, i) - Math.pow(2, i+1);
    }
    return res;
} 
jacobsthal_num(4);

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth jacobsthal number. https://www.geeksforgeeks.org/jacobsthal-and-jacobsthal-lucas-numbers/ 0, 1, 1, 3, 5, 11, 21, 43, 85, 171, 341, 683, 1365, 2731, ...

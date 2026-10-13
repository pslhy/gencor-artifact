
function get_max_sum(n: number): number {
    if(n <= 1) return n;
    let sum = 0;
    let arr = Math.floor(n / 2);
    let arr1 = Math.floor(n / 3);
    let arr2 = Math.floor(n / 4);
    let arr3 = Math.floor(n / 5);
    let max = Math.max(get_max_sum(arr), get_max_sum(arr1), get_max_sum(arr2), get_max_sum(arr3));
    sum = Math.max(n, max + n);
    return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum sum possible by using the given equation f(n) = max( (f(n/2) + f(n/3) + f(n/4) + f(n/5)), n).

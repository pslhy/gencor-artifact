
function get_max_sum(n: number): number { 
    let memo: number = 0;
    let computed: number = 0;
    let dict: number = 0;
    let x: number = 0;
    let y: number = 0;
    let z: number = 0;
    let w: number = 0;
    let result: number = 0;

    if (n == 0 || n == 1) {
        return n;
    }

    result = Math.max(get_max_sum(Math.floor(n / 2)) + get_max_sum(Math.floor(n / 3)) + get_max_sum(Math.floor(n / 4)) + get_max_sum(Math.floor(n / 5)), n);
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum sum possible by using the given equation f(n) = max( (f(n/2) + f(n/3) + f(n/4) + f(n/5)), n).

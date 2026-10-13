function get_ludic(n: number): number[] {
    let arr = Array(n+1).fill(true);
    let p = 2;
    let result = [];
    while(p * p <= n){
        if(arr[p] == true){
            for(let i = p * p; i <= n; i += p){
                arr[i] = false;
            }
        }
        p += 1;
    }
    for(let i = 2; i < n; i++){
        if(arr[i]){
            result.push(i);
        }
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to get all lucid numbers smaller than or equal to a given integer.

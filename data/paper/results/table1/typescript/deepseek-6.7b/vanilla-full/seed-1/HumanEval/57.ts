function monotonic(l: number[]): boolean {
    if(l.length < 2){
        return true;
    }
    let increase = true;
    let decrease = true;
    for(let i = 0; i < l.length - 1; i++){
        if(l[i] > l[i + 1]){
            increase = false;
        }
        if(l[i] < l[i + 1]){
            decrease = false;
        }
        if(!increase && !decrease){
            return false;
        }
    }
    return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Return true is array elements are monotonically increasing or decreasing.
//     >>> monotonic([1, 2, 4, 20])
//     true
//     >>> monotonic([1, 20, 4, 10])
//     false
//     >>> monotonic([4, 1, 0, -10])
//     true


function check_distinct(test_tup: number[]): boolean {
    let arr = test_tup;
    let map = new Map();
    for(let i=0; i< arr.length; i++){
        if(map.get(arr[i])) return false;
        map.set(arr[i], 1);
    }
    return true;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if given array contains no duplicates.

function check_K(test_tup: number[], K: number): boolean {
    for(let i=0; i < test_tup.length; i++) {
        if(test_tup[i] === K) {
            return true;
        }
    }
    return false;
}

// test the function
let arr: number[] = [1, 2, 3, 4, 5];
let K: number = 3;
console.log(check_K(arr, K)); // will return true if K is in arr, false otherwise


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if the given arrays contain the k or not.
